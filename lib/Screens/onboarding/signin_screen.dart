import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    String pattern = r'^[a-zA-Z0-9]+@[a-zA-Z]+\.[a-zA-Z]+';

    RegExp regex = RegExp(pattern);
    if (regex.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

String? _validatePassword(String? value) {
    if (value == null || value.isEmpty || value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    final bool hasUppercase = value.contains(RegExp(r'[A-Z]'));
    final bool hasDigits = value.contains(RegExp(r'[0-9]'));
    final bool hasSpecialCharacters =
        value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    if (!hasUppercase || !hasDigits || !hasSpecialCharacters) {
      return 'Password must contain at least one uppercase letter, one digit, and one special character';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
        backgroundColor: Color.fromARGB(255, 9, 207, 148),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
            child: Column(
          children: [
            TextFormField(
              controller: _emailController, 
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              validator: _validateEmail, // <--- email validation used here
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _passwordController, // password controller used here
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              validator: _validatePassword, // <--- password validation used here
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Forgot password?'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sign in'),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
