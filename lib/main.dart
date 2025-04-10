import 'package:demo_marvel/app/bindings/splash_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    fallbackLocale: Locale('es', 'ES'),
    debugShowCheckedModeBanner: false,
    initialBinding: SplashBinding(),
    initialRoute: Routes.SPLASH,
    getPages: AppPages.pages,
  ));
}