import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class LoginScreen extends StatelessWidget {
  final email = TextEditingController();
  final password = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: email, decoration: const InputDecoration(labelText: "Email")),
            TextField(controller: password, obscureText: true, decoration: const InputDecoration(labelText: "Password")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => AuthController.instance.login(email.text.trim(), password.text.trim()),
              child: const Text("Login"),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/signup'),
              child: const Text("Don't have an account? Sign Up"),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/forgot'),
              child: const Text("Forgot Password?"),
            ),
          ],
        ),
      ),
    );
  }
}
