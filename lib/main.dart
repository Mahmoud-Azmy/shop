import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/controllers/product_controller.dart';
import 'package:shopping_app/login_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) {
        return ProductController();
      },
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginScreen(),
    );
  }
}
