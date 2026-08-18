class Equipamentos {
  final int id;
  final String nome;
  final String marca;
  final double valor;

  Equipamentos({
    required this.id,
    required this.nome,
    required this.marca,
    required this.valor,
  });

  factory Equipamentos.fromJson(Map<String, dynamic> json) {
    return Equipamentos(
      id: json["id"],
      nome: json["nome"],
      marca: json["marca"],
      valor: (json["valor"] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "nome": nome, "marca": marca, "valor": valor};
  }
}
