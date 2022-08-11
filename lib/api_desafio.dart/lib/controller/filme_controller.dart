import 'package:dart_api/api_desafio.dart/lib/repositories/filme_repository.dart';

class FilmeController {
  final _filmeRepository = FilmeRepository();

  Future<void> findAll() async {
    final filmes = await _filmeRepository.findAll();
    filmes.forEach(print);
  }

  Future<void> findById(String id) async {
    final filme = await _filmeRepository.findById(id);
    print(filme);
  }
}
