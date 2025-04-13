

import 'package:demo_marvel/app/controllers/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context),
    );
  }

  Widget body(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Image.network(
            '${controller.character.thumbnail.path}.${controller.character.thumbnail.extension}',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset(
                'assets/images/marvel_default.jpg',
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        Column(
          children: [
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(80, 50),
                  topRight:Radius.elliptical(80, 50),
                )
              ),
              child: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width * .05),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      description(context),
                      comics(context)
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget description(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header(context),
        if(controller.character.description.isNotEmpty)
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * .035,
          ),
          child: Chip(
              label: Text(
                'Descripción',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * .04
                ),
              ),
              backgroundColor: Colors.black,
            ),
        ),
        if(controller.character.description.isNotEmpty)
        Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * .05
          ),
          child: Text(
            controller.character.description,
            style: TextStyle(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.width * .035
            ),
          ),
        )
      ],
    );
  }

  Widget comics(context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.width * .035,
            ),
            child: Chip(
              label: Text(
                'Cómics',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * .04
                ),
              ),
              backgroundColor: Colors.black,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: controller.character.comics.items.map((comic){
                  return Text(
                    '• ${comic.name}',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .035
                    ),
                  );
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget header(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.width * .05,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () => Get.back(),
            ),
          ),
          Expanded(
            flex: 8,
            child: Text(
              controller.character.name,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * .075,
                fontFamily: 'Marvel',
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(flex: 1, child: Container())
        ],
      ),
    );
  }

}