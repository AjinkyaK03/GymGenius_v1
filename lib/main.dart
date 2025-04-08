import 'package:flutter/material.dart';
import 'package:gymgenius_v1/app.dart';
import 'package:gymgenius_v1/features/authentication/screens/onboarding/onboarding.dart';
import 'package:gymgenius_v1/navigation_menu.dart';
import 'package:gymgenius_v1/utils/theme/theme.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:device_preview_plus/device_preview_plus.dart';

void main() => runApp(
  // App(),
  DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
