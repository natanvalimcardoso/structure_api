//* Uma api externa ou um serviço externo
import 'dart:convert';

// ignore: depend_on_referenced_packages
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

  Future<Aluno> findById(String id) async {
    final alunoResponse = await http.get(Uri.parse('http://localhost:3031/alunos/$id'));
    return Aluno.fromJson(alunoResponse.body);
  }

  Future<void> update(Aluno aluno) async {
   await http.put(
      Uri.parse('http://localhost:3031/alunos/${aluno.id}'),
      body: aluno.toJson(),
      headers: {
        'content-type': 'application/json',
      },
    );
  }
  
  Future<void> insert(Aluno aluno) async {
   await http.post(
      Uri.parse('http://localhost:3031/alunos/'),
      body: aluno.toJson(),
      headers: {
        'content-type': 'application/json',
      },
    );
  }
}
