

import 'package:demo_marvel/app/bindings/detail_binding.dart';
import 'package:demo_marvel/app/bindings/home_binding.dart';
import 'package:demo_marvel/app/bindings/splash_binding.dart';
import 'package:demo_marvel/app/ui/pages/detail_page.dart';
import 'package:demo_marvel/app/ui/pages/home_page.dart';
import 'package:demo_marvel/app/ui/pages/splash_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page: ()=> SplashPage(), binding: SplashBinding()),
    GetPage(name: Routes.HOME, page: ()=> HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.HERO_DETAIL, page: ()=> DetailPage(), binding: DetailBinding()),
  ];
}