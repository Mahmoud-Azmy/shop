import 'package:flutter/material.dart';
import 'package:shopping_app/models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> porductList = [
    ProductModel(
      id: 6,
      name: "Classic Comfort Fit Joggers",
      imageUrl: "https://i.imgur.com/ZKGofuB.jpeg",
      price: 25,
      description:
          "Discover the perfect blend of style and comfort with our Classic Comfort Fit Joggers",
    ),
    ProductModel(
      id: 7,
      name: "Classic Navy Blue Baseball Cap",
      imageUrl: "https://i.imgur.com/R3iobJA.jpeg",
      price: 61,
      description: "Step out in style with this sleek navy blue baseball cap",
    ),
    ProductModel(
      id: 8,
      name: "Classic Olive Chino Shorts edit",
      imageUrl: "https://i.imgur.com/YIq57b6.jpeg",
      price: 85,
      description:
          "Elevate your casual wardrobe with these classic olive chino shorts",
    ),
    ProductModel(
      id: 9,
      name: "Classic Black T-Shirt",
      imageUrl: "https://i.imgur.com/9DqEOV5.jpeg",
      price: 35,
      description: "Elevate your everyday style with our Classic Black T-Shirt",
    ),
    ProductModel(
      id: 10,
      name: "White & Orange Gaming Controller",
      imageUrl: "https://i.imgur.com/ZANVnHE.jpeg",
      price: 669,
      description:
          "Elevate your gaming experience with this state-of-the-art wireless controller, featuring a crisp white base with vibrant orange accents",
    ),
  ];
}
