import 'package:dart_api/api_dart/lib/model/aluno.dart';
import 'package:dart_api/api_dart/lib/model/cidade.dart';
import 'package:dart_api/api_dart/lib/model/curso.dart';
import 'package:dart_api/api_dart/lib/model/endereco.dart';
import 'package:dart_api/api_dart/lib/model/telefone.dart';

import '../repositories/alunos_repository.dart';

class AlunosController {
  final _alunosRepository = AlunosRepository();

  Future<void> findAll() async {
    final alunos = await _alunosRepository.findAll();
    alunos.forEach(print);
  }

  Future<void> findById(String id) async {
    final aluno = await _alunosRepository.findById(id);
    print(aluno);
  }

  Future<void> update(String id, String nomeCurso) async {
    final aluno = await _alunosRepository.findById(id);
    aluno.nomesCurso.add(nomeCurso);

    await _alunosRepository.update(aluno);

    final alunoAtualizado = await _alunosRepository.findById(id);
    print(alunoAtualizado.nomesCurso);
  }

  Future<void> insert() async {
    final aluno = Aluno(
      nome: 'Teste',
      idade: 15,
      isAluno: true,
      nomesCurso: ['teste', 'teste'],
      cursos: [
        Cursos(id: 1, nome: 'teste', isAluno: false),
        Cursos(id: 2, nome: 'teste 2', isAluno: true),
      ],
      endereco: Endereco(
        rua: 'teste',
        cep: '09052',
        numero: 233,
        cidade: Cidade(id: 1, nome: 'Torres'),
        telefone: Telefone(ddd: 55, numero: '48991749818'),
      ),
    );
    _alunosRepository.insert(aluno);
  }
}
