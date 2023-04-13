import 'model/models.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class GetUrl {
  final http.Client client = http.Client();
  //сюда   \/ класc из модели
  Future<Anime> get() async {
    final response = await client.get(
        Uri.parse("https://api.jikan.moe/v4/anime"),
        headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final phonesHomeStore = json.decode(response.body);
    //cюда        \/ класc из модели
         return Anime.fromJson(phonesHomeStore);

    } else {
      throw Exception();
    }
  }
}
