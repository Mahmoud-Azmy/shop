import 'package:flutter/material.dart';
import 'package:shopping_app/models/product_model.dart';

class ProductController extends ChangeNotifier {
  final List<ProductModel> products = [
    ProductModel(
      name: 'Product 1',
      price: 29.99,
      description: 'Description for Product 1',
      imageUrl: 'assets/iphone.png',
    ),
    ProductModel(
      name: 'Product 2',
      price: 49.99,
      description: 'Description for Product 2',
      imageUrl: 'assets/iphone.png',
    ),
    ProductModel(
      name: 'Product 3',
      price: 19.99,
      description: 'Description for Product 3',
      imageUrl: 'assets/iphone.png',
    ),
    ProductModel(
      name: 'Product 4',
      price: 99.99,
      description: 'Description for Product 4',
      imageUrl: 'assets/iphone.png',
    ),
    ProductModel(
      name: 'Product 5',
      price: 9999,
      description: 'Description for Product 5',
      imageUrl: 'assets/iphone.png',
    ),
    ProductModel(
      name: 'Product 6',
      price: 999.9,
      description: 'Description for Product 6',
      imageUrl: 'assets/iphone.png',
    ),

    // Add more products as needed
  ];
}
