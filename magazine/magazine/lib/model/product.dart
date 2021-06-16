

class Product {
  final String nome;
  final String foto;
  final String descricao;
  final String preco;
  final double parcelamento;
  bool isFavorite;

  Product({
    required this.nome,
    required this.foto,
    required this.descricao,
    required this.preco,
    required this.parcelamento,
    this.isFavorite = false
  });
}
