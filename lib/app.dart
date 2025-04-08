import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gymgenius_v1/utils/theme/theme.dart';
import 'package:gymgenius_v1/features/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}
