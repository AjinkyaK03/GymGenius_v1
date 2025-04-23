// features/updates/models/update_info_model.dart

class UpdateInfoModel {
  final String version;
  final String changelog;
  final String downloadUrl;

  UpdateInfoModel({
    required this.version,
    required this.changelog,
    required this.downloadUrl,
  });

  factory UpdateInfoModel.fromJson(Map<String, dynamic> json) {
    return UpdateInfoModel(
      version: json['version'] ?? '',
      changelog: json['changelog'] ?? '',
      downloadUrl: json['download_url'] ?? '',
    );
  }
}
