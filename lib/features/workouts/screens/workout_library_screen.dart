import 'package:flutter/material.dart';
import '../data/sample_workouts.dart';
import '../widgets/workout_card.dart';

class WorkoutLibraryScreen extends StatelessWidget {
  const WorkoutLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Workout Library')),
      body: ListView.builder(
        itemCount: sampleWorkouts.length,
        itemBuilder: (context, index) {
          final workout = sampleWorkouts[index];
          return WorkoutCard(workout: workout);
        },
      ),
    );
  }
}
