import 'package:flutter/material.dart';
import 'package:shopping_app/products_screen.dart';
import 'package:shopping_app/widgets/custom_button.dart';
import 'package:shopping_app/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text('login'),
        actions: [Icon(Icons.settings, size: 28)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16),
                CircleAvatar(
                  radius: 70,
                  child: Icon(Icons.shopping_cart, size: 70, color: Colors.red),
                ),
                SizedBox(height: 16),
                Text(
                  'SHOPPING',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                SizedBox(height: 16),
                CustomTextFiled(
                  hintText: 'email',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your email';
                    }
                    if (!value.contains('@')) {
                      return 'please enter a valid email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                CustomTextFiled(
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 6) {
                      return 'Password must be at least 6 char';
                    }
                    return null;
                  },
                  obscureText: isObscure,
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      isObscure = !isObscure;
                      setState(() {});
                    },
                    icon: Icon(Icons.visibility),
                  ),
                ),
                SizedBox(height: 16),
                CustomButton(
                  formKey: formKey,
                  text: 'Login',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProductsScreen();
                          },
                        ),
                        (Route<dynamic> route) => false,
                      );
                    }
                  },
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
