// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cidade {
  int id;
  String nome;

  Cidade({
    required this.id,
    required this.nome,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
    };
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      id: map['id'] ?? 0,
      nome: map['nome'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cidade.fromJson(String source) => Cidade.fromMap(jsonDecode(source));

  @override
  String toString() => 'Cidade(id: $id, nome: $nome)';
}

// cidade: {
// id: 1,
// nome: "São Paulo",
// },