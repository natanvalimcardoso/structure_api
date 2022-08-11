import 'package:dart_api/api_dart/lib/repositories/alunos_repository.dart';
import 'package:dart_api/api_desafio.dart/lib/repositories/filme_repository.dart';

class FilmeController {
  final _filmeRepository = FilmeRepository();

  Future<void> findAll() async {
    final filmes = await _filmeRepository.findAll();
    filmes.forEach(print);
  }
}
