//* Uma api externa ou um serviço externo
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/aluno.dart';

class AlunosRepository {
  Future<List<Aluno>> findAll() async {
    final alunosResponse = await http.get(Uri.parse('http://localhost:3031/alunos'));
    final alunosList = jsonDecode(alunosResponse.body);

    return alunosList.map<Aluno>((alunoMap) {
      return Aluno.fromMap(alunoMap);
    }).toList();
  }
}
