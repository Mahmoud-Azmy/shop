import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imgUrl,
  });
  final String name;
  final String imgUrl;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imgUrl, height: 100),
            Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(price.toString(), style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
