import 'package:demo_marvel/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  @override
  void onReady() {
    super.onReady();
    gotoHome();
  }

  void gotoHome() {
    Future.delayed(Duration(seconds: 2), () {
      Get.offAllNamed(Routes.HOME);
    });
  }
}