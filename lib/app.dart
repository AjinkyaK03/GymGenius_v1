import 'package:flutter/material.dart';
import 'package:gymgenius_v1/utils/theme/theme.dart';
import 'package:gymgenius_v1/features/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}
