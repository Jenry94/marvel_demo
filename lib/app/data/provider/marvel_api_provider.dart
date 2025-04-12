import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

class MarvelApiProvider extends GetConnect {

  Future<Response> getCharacters({required int offset, required int limit}) {
    Map<String, dynamic> params = {
      'ts': '1',
      'apikey': dotenv.env['API_KEY'],
      'hash': dotenv.env['HASH'],
      'offset': '$offset',
      'limit': '$limit'
    };
    return get('https://gateway.marvel.com/v1/public/characters', query: params);
  }
}