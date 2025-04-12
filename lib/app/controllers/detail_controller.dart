import 'package:demo_marvel/app/data/models/marvel_response_model.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  late final Character character;

  @override
  void onInit() {
    super.onInit();
    character = Get.arguments as Character;
  }
}