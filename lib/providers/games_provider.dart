import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trabajo_practico_final/models/game_info.dart';

class GamesProvider {
  static Future<List<GameInfo>> getGames() async {
    final response = await http.get(
        Uri.parse('https://trabajo-practico-1.onrender.com/api/v1/juegos'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body)['data'];
      return data.map((game) => GameInfo.fromJson(game)).toList();
    } else {
      throw Exception('Failed to load games');
    }
  }
}
