import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gymgenius_v1/common/update_checker.dart';
import 'package:gymgenius_v1/features/chat/screens/chat_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GymGenius V1',
      home: const StartupScreen(), // ← First screen where update check happens
    );
  }
}

class StartupScreen extends StatefulWidget {
  const StartupScreen({super.key});

  @override
  State<StartupScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  @override
  void initState() {
    super.initState();
    UpdateChecker.checkForUpdate(context);
  }

  @override
  Widget build(BuildContext context) {
    return const ChatPage();
  }
}
