import 'package:flutter/material.dart';
import 'package:gymgenius_v1/features/chat/screens/chat_page.dart';
import 'package:gymgenius_v1/features/home/screens/home_page.dart';
import 'package:gymgenius_v1/features/plan/screens/workout_plan_screen.dart';
import 'package:gymgenius_v1/features/profile/screens/profile_screen.dart';

class MainNavBar extends StatefulWidget {
  const MainNavBar({super.key});

  @override
  State<MainNavBar> createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ChatPage(),
    WorkoutPlanScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.library_books), label: 'Plan'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
