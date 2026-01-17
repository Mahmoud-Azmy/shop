import 'package:dio/dio.dart';
import 'package:shopping_app/consts.dart';

import '../models/auth_model.dart';
import '../models/product_model.dart';

class DioService {
  final Dio dio = Dio();

  Future<List<Product>> getProducts() async {
    try {
      final response = await dio.get(
        '${Consts.apiBaseUrl}${Consts.getProductsEndpoint}',
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

  /// Login User
  Future<AuthResponse> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        '${Consts.apiBaseUrl}${Consts.loginEndpoint}',
        data: {'Email': email, 'Password': password},
      );

      if (response.statusCode == 200) {
        final authResponse = AuthResponse.fromJson(response.data);
        return authResponse;
      }
      throw Exception('Failed to login');
    } catch (e) {
      print('Login Error: $e');
      throw Exception('Login failed');
    }
  }

  /// Register User
  Future<bool> registerUser({
    required String name,
    required String phone,
    required String email,
    required String password,
  }) async {
    try {
      final registerRequest = RegisterRequest(
        name: name,
        phone: phone,
        email: email,
        password: password,
      );

      final response = await dio.post(
        '${Consts.apiBaseUrl}${Consts.registerEndpoint}',
        data: registerRequest.toJson(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final authResponse = AuthResponse.fromJson(response.data);
        return authResponse.status;
      }
      return false;
    } catch (e) {
      print('Register Error: $e');
      return false;
    }
  }
}
