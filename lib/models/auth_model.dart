class LoginRequest {
  final String email;
  final String password;

  LoginRequest({required this.email, required this.password});
}

class RegisterRequest {
  final String name;
  final String phone;
  final String email;
  final String password;

  RegisterRequest({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {'Name': name, 'Phone': phone, 'Email': email, 'Password': password};
  }
}

class AuthResponse {
  final bool status;
  final String message;
  final User? user;

  AuthResponse({required this.status, required this.message, this.user});

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      status: json['status'] ?? false,
      message: json['message'] ?? '',
      user: json['user'] != null ? User.fromJson(json['user']) : null,
    );
  }
}

class User {
  final int id;
  final String name;
  final String phone;
  final String email;
  final String password;

  User({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      phone: json['phone'] ?? '',
      email: json['email'] ?? '',
      password: json['password'] ?? '',
    );
  }
}
