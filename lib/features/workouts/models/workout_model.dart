class WorkoutModel {
  final String id;
  final String name;
  final String description;
  final String imageAsset;
  final String videoAsset;
  final String muscleGroup;
  final String equipment;

  WorkoutModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageAsset,
    required this.videoAsset,
    required this.muscleGroup,
    required this.equipment,
  });

  factory WorkoutModel.fromJson(Map<String, dynamic> json) {
    return WorkoutModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageAsset: json['imageAsset'],
      videoAsset: json['videoAsset'],
      muscleGroup: json['muscleGroup'],
      equipment: json['equipment'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "description": description,
      "imageAsset": imageAsset,
      "videoAsset": videoAsset,
      "muscleGroup": muscleGroup,
      "equipment": equipment,
    };
  }
}
