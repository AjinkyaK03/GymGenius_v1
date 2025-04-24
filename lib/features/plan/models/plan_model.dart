class PlanModel {
  final String workoutId;
  final int reps;

  PlanModel({required this.workoutId, required this.reps});

  factory PlanModel.fromJson(Map<String, dynamic> json) {
    return PlanModel(
      workoutId: json['workoutId'],
      reps: json['reps'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'workoutId': workoutId,
      'reps': reps,
    };
  }
}
