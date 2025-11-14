import 'package:dio/dio.dart';

import '../models/product_model.dart';

class DioService {
  final Dio dio = Dio();
  Future<List<Product>> getProducts() async {
    try {
      final response = await dio.get(
        'https://elsewedyteam.runasp.net/api/Product/GetProducts',
      );
      if (response.statusCode == 200) {
        final productResponse = ProductResponse.fromJson(response.data);
        return productResponse.response;
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
