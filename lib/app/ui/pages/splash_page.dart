

import 'package:demo_marvel/app/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFED1D24),
      body: Center(
        child: Text(
          'MARVEL', 
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.35,
            fontFamily: 'Marvel',
            color: Colors.white
          )
        )
      ),
    );
  }

}