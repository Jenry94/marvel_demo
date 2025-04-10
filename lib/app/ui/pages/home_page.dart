

import 'package:demo_marvel/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFED1D24),
        centerTitle: true,
        title: Text(
          'MARVEL', 
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.075,
            fontFamily: 'Marvel',
            color: Colors.white
          )
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              
            }
          )
        ],
      ),
    );
  }

}