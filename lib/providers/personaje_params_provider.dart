import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/personaje.dart';

class PersonajeParamsProvider extends ChangeNotifier {
  Personaje? personaje;
  PersonajeParamsProvider({String? name, String? slug}) {
    this.getPersonajeParams(name, slug);
  }
  Future<Personaje?> getPersonajeParams(String? name, String? slug) async {
    final response = await http.get(Uri.parse(
        'https://trabajo-practico-1.onrender.com/api/v1/personajes/populares_params?name=$name&slug=$slug'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body)['data'];
      personaje = Personaje.fromJson(data[0]);
      return this.personaje;
    } else {
      throw Exception('No se pudo cargar el personaje');
    }
  }
}
