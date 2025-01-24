import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
        backgroundColor: Color.fromARGB(255, 9, 207, 148),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'User ID',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
              decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          )),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 60),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // Handle forgot password
                },
                child: Text('Forgot Password?'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle sign in
                },
                child: Text('Sign In'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
