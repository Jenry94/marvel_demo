import 'package:demo_marvel/app/controllers/detail_controller.dart';
import 'package:get/get.dart';

class DetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DetailController());
  }
  
}