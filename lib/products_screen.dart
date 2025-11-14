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
      body: Consumer(
        builder: (context, ProductController controller, _) {
          if (controller.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (controller.errorMessage != null) {
            return Center(child: Text('Error: ${controller.errorMessage}'));
          } else {
            return GridView.builder(
              itemCount: controller.products.length,
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
                            product: controller.products[index],
                          );
                        },
                      ),
                    );
                  },
                  child: ProductCard(
                    name: controller.products[index].name,
                    price: controller.products[index].price.toDouble(),
                    imgUrl: controller.products[index].imageUrl,
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
