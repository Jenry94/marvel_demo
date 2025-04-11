

import 'package:demo_marvel/app/controllers/home_controller.dart';
import 'package:demo_marvel/app/ui/global_widgets/card_hero_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context),
      body: body(context),
    );
  }

  AppBar appBar (BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFED1D24),
      centerTitle: true,
      title: Text(
        'MARVEL', 
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.075,
          fontFamily: 'Marvel',
          color: Colors.white
        )
      )
    );
  }

  Widget body(BuildContext context) {
    return Column(
      children: [
        searchField(context),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CardHeroItem(
                  onTap: () {
                    controller.goToDetail();
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget searchField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * .025),
      child: Center(
        child: TextField(
          keyboardType: TextInputType.webSearch,
          decoration: InputDecoration(
            hintText: 'Buscar...',
            suffixIcon: Icon(Icons.search),
            filled: true,
          ),
        ),
      ),
    );
  }

}