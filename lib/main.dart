import 'package:demo_marvel/app/bindings/splash_binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env.marvel');
  await GetStorage.init();
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