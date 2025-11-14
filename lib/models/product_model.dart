class ProductResponse {
  final List<Product> response;

  ProductResponse({required this.response});

  factory ProductResponse.fromJson(Map<String, dynamic> json) {
    return ProductResponse(
      response: (json['response'] as List)
          .map((item) => Product.fromJson(item))
          .toList(),
    );
  }
}

class Product {
  final int id;
  final String name;
  final String imageUrl;
  final num price;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      price: json['price'],
      description: json['description'],
    );
  }
}
