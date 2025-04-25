import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gymgenius_v1/common/widgets/bottom_nav_bar.dart';
import 'package:gymgenius_v1/features/chat/screens/chat_page.dart';
import 'package:gymgenius_v1/features/auth/controllers/auth_controller.dart';
import 'package:gymgenius_v1/features/auth/screens/login_screen.dart';
import 'package:gymgenius_v1/features/auth/screens/signup_screen.dart';
import 'package:gymgenius_v1/features/auth/screens/forgot_password_screen.dart';
import 'package:gymgenius_v1/features/plan/screens/workout_plan_screen.dart';
import 'package:gymgenius_v1/features/profile/screens/profile_screen.dart';
import 'package:gymgenius_v1/features/updates/controllers/update_controller.dart';
import 'package:gymgenius_v1/features/workout_camera/screens/workout_camera_page.dart';
import 'package:gymgenius_v1/features/workouts/screens/workout_library_screen.dart';
import 'firebase_options.dart'; // Import the generated file
import 'common/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ); // Use the generated options
  } catch (e) {
    log.e("Error", error: e);
    // print("Firebase initialization error: $e");
  }
  Get.put(AuthController());
  runApp(const GymGeniusApp());
}

class GymGeniusApp extends StatelessWidget {
  const GymGeniusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GymGenius V1',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const MainNavBar(),
      getPages: [
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/signup', page: () => SignupScreen()),
        GetPage(name: '/forgot', page: () => ForgotPasswordScreen()),
        GetPage(name: '/profile', page: () => ProfilePage()),
        GetPage(name: '/chat', page: () => ChatPage()),
        GetPage(name: '/Workout', page: () => WorkoutLibraryScreen()),
        GetPage(name: '/plan', page: () => WorkoutPlanScreen()),
        GetPage(name: '/camera', page: () => WorkoutCameraPage()),
      ],
    );
  }
}

class StartupScreen extends StatefulWidget {
  const StartupScreen({super.key});

  @override
  State<StartupScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  final UpdateController updateController = Get.put(
    UpdateController(),
  ); // Create an instance

  @override
  void initState() {
    super.initState();
    updateController.checkForUpdates(); // Call the method on the instance
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final user = Get.find<AuthController>().firebaseUser.value;
      if (user != null) {
        return ChatPage(); // or HomeScreen
      } else {
        return LoginScreen();
      }
    });
  }
}
