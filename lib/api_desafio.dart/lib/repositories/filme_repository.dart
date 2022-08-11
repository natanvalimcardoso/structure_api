import 'dart:convert';

import '../model/filme.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class FilmeRepository {

  Future<List<Filme>> findAll() async {
    final filmeResponse = await http.get(Uri.parse("http://localhost:3031/filmes"));
    final filmeLista = jsonDecode(filmeResponse.body);

    return filmeLista.map<Filme>((filmeMap) {
      return Filme.fromMap(filmeMap);
    }).toList();
  }
}
