// features/updates/services/update_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/update_info_model.dart';

class UpdateService {
  static Future<UpdateInfoModel?> fetchLatestUpdate() async {
    try {
      final response = await http.get(
        Uri.parse('https://api.github.com/repos/YOUR_USERNAME/gymgenius_v1/releases/latest'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return UpdateInfoModel(
          version: (data['tag_name'] as String?)?.replaceAll('v', '') ?? '',
          changelog: data['body'] ?? '',
          downloadUrl: data['html_url'] ?? '',
        );
      } else {
        return null;
      }
    } catch (e) {
      print('Error fetching GitHub update info: $e');
      return null;
    }
  }
}
