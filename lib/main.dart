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
    theme: ThemeData(
      useMaterial3: false,
      colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.red),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.grey.shade100,
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      ),
    ),
  ));
}