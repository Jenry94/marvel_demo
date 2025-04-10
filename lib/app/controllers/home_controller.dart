import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/error_model.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  HandleError fetchDataError = HandleError(error: false);



  void fetchData() async {
    try {
      isLoading(true);
      http.Response response = await http.get(Uri.parse('https://api.opensea.io/api/v1/assets?collection=cryptopunks'));
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
       // openseaModel = OpenseaModel.fromJson(result);
      } else {
        fetchDataError = HandleError(error: true, mensaje: 'error fetching data');
      }
    } catch (e) {
      fetchDataError = HandleError(error: true, mensaje: 'Error while getting data is $e');
    } finally {
      isLoading(false);
    }
  }
  
}