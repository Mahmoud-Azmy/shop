import 'package:flutter/material.dart';

import '../services/dio_service.dart';

class AuthController extends ChangeNotifier {
  final DioService _dioService = DioService();

  bool isLoading = false;

  Future<bool> login({required String email, required String password}) async {
    isLoading = true;
    notifyListeners();

    final loginResponse = await _dioService.loginUser(
      email: email,
      password: password,
    );

    isLoading = false;
    notifyListeners();

    return loginResponse.status;
  }

  Future<bool> register({
    required String name,
    required String phone,
    required String email,
    required String password,
  }) async {
    isLoading = true;
    notifyListeners();

    final success = await _dioService.registerUser(
      name: name,
      phone: phone,
      email: email,
      password: password,
    );

    isLoading = false;
    notifyListeners();

    return success;
  }
}
