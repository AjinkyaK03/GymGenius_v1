import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdateChecker {
  static Future<void> checkForUpdate(BuildContext context) async {
    final info = await PackageInfo.fromPlatform();
    final localVersion = info.version;

    final url = Uri.parse('https://api.github.com/repos/AjinkyaK03/GymGenius_v1/releases/latest');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final latestVersion = json['tag_name'].replaceFirst('v', ''); // remove v if exists

      if (_isNewerVersion(latestVersion, localVersion)) {
        _showUpdateDialog(context, json['html_url']);
      }
    }
  }

  static bool _isNewerVersion(String latest, String current) {
    List<int> latestParts = latest.split('.').map(int.parse).toList();
    List<int> currentParts = current.split('.').map(int.parse).toList();

    for (int i = 0; i < latestParts.length; i++) {
      if (i >= currentParts.length || latestParts[i] > currentParts[i]) {
        return true;
      } else if (latestParts[i] < currentParts[i]) {
        return false;
      }
    }
    return false;
  }

  static void _showUpdateDialog(BuildContext context, String releaseUrl) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Update Available'),
        content: const Text('A new version of GymGenius is available. Please update for the latest features and improvements!'),
        actions: [
          TextButton(
            child: const Text('Later'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          ElevatedButton(
            child: const Text('Update Now'),
            onPressed: () {
              launchUrl(Uri.parse(releaseUrl), mode: LaunchMode.externalApplication);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
