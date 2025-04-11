import 'dart:convert';

import 'package:demo_marvel/app/data/models/marvel_response_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../data/models/error_model.dart';
import '../routes/app_pages.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  HandleError fetchDataError = HandleError(error: false);


  void fetchData() async {
    try {
      isLoading(true);
      http.Response response = await http.get(Uri.parse('https://api.opensea.io/api/v1/assets?collection=cryptopunks'));
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        var marvelResponse = MarvelResponse.fromJson(result);

      } else {
        fetchDataError = HandleError(error: true, mensaje: 'error fetching data');
      }
    } catch (e) {
      fetchDataError = HandleError(error: true, mensaje: 'Error while getting data is $e');
    } finally {
      isLoading(false);
    }
  }


  void goToDetail() {
    Get.toNamed(Routes.HERO_DETAIL);
  }
  
}