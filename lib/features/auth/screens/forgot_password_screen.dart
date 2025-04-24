import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final email = TextEditingController();

  ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forgot Password")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: email, decoration: const InputDecoration(labelText: "Email")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => AuthController.instance.forgotPassword(email.text.trim()),
              child: const Text("Reset Password"),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/login'),
              child: const Text("Back to Login"),
            ),
          ],
        ),
      ),
    );
  }
}
