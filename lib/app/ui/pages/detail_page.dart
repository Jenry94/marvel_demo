

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
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://flash.comiccruncher.com/images/characters/0b80ff30.jpg'
              )
            )
          )
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
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                )
              ),
              child: info(context),
            ),
          ],
        )
      ],
    );
  }

  Widget info(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(context),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.width * .035,
            ),
            child: Text(
              'Descripción',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width * .04
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.width * .05,
            ),
            child: Text(
              'EL HOMBRE DE HIERROooooooooooooooooooooooooooooooooooooooooo',
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width * .035
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.width * .035,
            ),
            child: Text(
              'Cómics',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width * .04
              ),
            ),
          ),
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
            flex: 5,
            child: Text(
              'IRON MAN',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * .095,
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