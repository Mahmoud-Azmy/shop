import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../services/dio_service.dart';

class ProductController extends ChangeNotifier {
  final DioService _dioService = DioService();

  List<Product> products = [];
  bool isLoading = false;
  String? errorMessage;
  ProductController() {
    getProducts();
  }
  Future<void> getProducts() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      products = await _dioService.getProducts();
    } catch (e) {
      errorMessage = e.toString();
      products = [];
    }
    isLoading = false;
    notifyListeners();
  }
}
