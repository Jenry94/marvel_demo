import 'package:demo_marvel/app/data/models/marvel_response_model.dart';
import 'package:demo_marvel/app/data/provider/marvel_api_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _apiProvider = MarvelApiProvider();
  int _offset = 0;
  int _limit = 20;
  final scrollController = ScrollController();
  RxBool isLoading = false.obs;
  RxList<Character> listCharacters = <Character>[].obs;
  RxList<Character> filteredCharacters = <Character>[].obs;
  int totalCharacters = 0;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_scrollListener);
  }

  @override
  void onReady() {
    super.onReady();
    getCharacters();
  }

  ///Metodo para hacer la consulta de los personajes al API
  void getCharacters() async {
    try {
      isLoading(true);
      var response = await _apiProvider.getCharacters(limit: _limit, offset: _offset);
      if (response.statusCode == 200) {
        var marvelResponse = MarvelResponse.fromJson(response.body);
        listCharacters = listCharacters + marvelResponse.data.results;
        filteredCharacters.assignAll(listCharacters);
        totalCharacters = marvelResponse.data.total;
        _limit = 10;
        _offset += marvelResponse.data.count;
      } else {
        Get.snackbar(
          'Error ${response.statusCode}',
          response.statusText ?? 'Error desconocido al consultar la API',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.orange,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error inesperado',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } finally {
      isLoading(false);
    }
  }

  ///Metodo para obtener mas personajes al llegar al final de la lista
  void _scrollListener(){
    if (isLoading.value == false && listCharacters.length >= 20 &&  scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        getCharacters();
    }
  }

  ///Metodo para filtrar la lista
  void filterList(String text) {
    if (text.isEmpty) {
      filteredCharacters.assignAll(listCharacters);
    } else {
      filteredCharacters.assignAll(
        listCharacters.where((c) => c.name.toLowerCase().contains(text.toLowerCase())),
      );
    }
  }
  
}