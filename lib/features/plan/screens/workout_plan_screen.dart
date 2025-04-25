import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gymgenius_v1/features/workout_camera/screens/workout_camera_page.dart';
import '../../workouts/data/sample_workouts.dart';
import '../../workouts/widgets/workout_card.dart';
import '../data/sample_plan.dart';

class WorkoutPlanScreen extends StatelessWidget {
  const WorkoutPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Today's Plan")),
      body: ListView(
        children:
            dummyPlan.map((plan) {
              final workout = sampleWorkouts.firstWhere(
                (w) => w.id == plan.workoutId,
              );
              return WorkoutCard(workout: workout, reps: plan.reps);
            }).toList(),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          Get.to(() => const WorkoutCameraPage());
        },
        icon: Icon(Icons.camera_alt),
      ),
    );
  }
}
