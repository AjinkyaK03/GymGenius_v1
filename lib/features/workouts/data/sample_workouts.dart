import '../models/workout_model.dart';

final sampleWorkouts = [
  WorkoutModel(
    id: 'pushups',
    name: 'Push-Ups',
    description: 'A bodyweight chest and tricep exercise.',
    imageAsset: 'assets/workouts/images/PushUp.webp',
    videoAsset: 'assets/workouts/videos/PushUp.mp4',
    muscleGroup: 'Chest',
    equipment: 'Bodyweight',
  ),
  WorkoutModel(
    id: 'squats',
    name: 'Squats',
    description: 'A lower body exercise that targets thighs, hips, and butt.',
    imageAsset: 'assets/workouts/images/Squat.webp',
    videoAsset: 'assets/workouts/videos/Squat.mp4',
    muscleGroup: 'Legs',
    equipment: 'Bodyweight',
  ),
  WorkoutModel(
    id: 'crosspunch',
    name: 'Cross Punch',
    description:
        'A cardio exercise that involves punching across the body to engage the core and upper body.',
    imageAsset: 'assets/workouts/images/CrossPunch.webp',
    videoAsset: 'assets/workouts/videos/CrossPunch.mp4',
    muscleGroup: 'Full Body',
    equipment: 'None',
  ),
  WorkoutModel(
    id: 'jumpingjack',
    name: 'Jumping Jack',
    description:
        'A full-body exercise that increases your heart rate and improves coordination.',
    imageAsset: 'assets/workouts/images/JumpingJack.webp',
    videoAsset: 'assets/workouts/videos/JumpingJack.mp4',
    muscleGroup: 'Full Body',
    equipment: 'None',
  ),
  WorkoutModel(
    id: 'situp',
    name: 'Sit-Up',
    description: 'A core exercise that strengthens the abdominal muscles.',
    imageAsset: 'assets/workouts/images/SitUp.webp',
    videoAsset: 'assets/workouts/videos/SitUp.mp4',
    muscleGroup: 'Core',
    equipment: 'None',
  ),
];
