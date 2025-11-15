import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/controllers/product_controller.dart';
import 'package:shopping_app/details_screen.dart';
import 'package:shopping_app/widgets/product_card.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // leading: Icon(Icons.arrow_back),
        title: Text('Products'),
        actions: [Icon(Icons.search, size: 28)],
      ),
      body: GridView.builder(
        itemCount: context.read<ProductController>().pList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen(
                      product: context.read<ProductController>().pList[index],
                    );
                  },
                ),
              );
            },
            child: ProductCard(
              name: context.watch<ProductController>().pList[index].name,
              price: context
                  .watch<ProductController>()
                  .pList[index]
                  .price
                  .toDouble(),
              imgUrl: context.watch<ProductController>().pList[index].imageUrl,
            ),
          );
        },
      ),
    );
  }
}
