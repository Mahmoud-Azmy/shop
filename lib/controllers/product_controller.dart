import 'package:flutter/material.dart';
import 'package:shopping_app/models/product_model.dart';

class ProductController extends ChangeNotifier {
  List<Product> pList = [
    Product(
      id: 1,
      name: "Fjallraven - Foldsack No. 1 Backpack",
      imageUrl: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
      price: 109.95,
      description:
          "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
    ),
    Product(
      id: 2,
      name: "Mens Casual Premium Slim Fit T-Shirts",
      imageUrl:
          "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
      price: 220,
      description:
          "Slim-fitting style, contrast raglan long sleeve, three-button henley placket",
    ),
    Product(
      id: 3,
      name: " Backpack",
      imageUrl: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
      price: 100,
      description: "Your perfect pack for everyday use and walks in the forest",
    ),
    Product(
      id: 4,
      name: "White Gold Ring",
      imageUrl:
          "https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg",
      price: 1000,
      description: "Classic  Wedding Engagement Diamond  Ring for Her",
    ),
    Product(
      id: 5,
      name: "Acer Full HD (1920 x 1080) IPS Ultra-Thin",
      imageUrl: "https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg",
      price: 5999,
      description:
          "21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology",
    ),
    Product(
      id: 6,
      name: "Classic Comfort Fit Joggers",
      imageUrl: "https://i.imgur.com/ZKGofuB.jpeg",
      price: 25,
      description:
          "Discover the perfect blend of style and comfort with our Classic Comfort Fit Joggers",
    ),
    Product(
      id: 7,
      name: "Classic Navy Blue Baseball Cap",
      imageUrl: "https://i.imgur.com/R3iobJA.jpeg",
      price: 61,
      description: "Step out in style with this sleek navy blue baseball cap",
    ),
    Product(
      id: 8,
      name: "Classic Olive Chino Shorts edit",
      imageUrl: "https://i.imgur.com/YIq57b6.jpeg",
      price: 85,
      description:
          "Elevate your casual wardrobe with these classic olive chino shorts",
    ),
    Product(
      id: 9,
      name: "Classic Black T-Shirt",
      imageUrl: "https://i.imgur.com/9DqEOV5.jpeg",
      price: 35,
      description: "Elevate your everyday style with our Classic Black T-Shirt",
    ),
    Product(
      id: 10,
      name: "White & Orange Gaming Controller",
      imageUrl: "https://i.imgur.com/ZANVnHE.jpeg",
      price: 669,
      description:
          "Elevate your gaming experience with this state-of-the-art wireless controller, featuring a crisp white base with vibrant orange accents",
    ),
  ];
}
