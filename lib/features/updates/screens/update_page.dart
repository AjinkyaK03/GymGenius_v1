// features/updates/screens/update_page.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/update_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdatePage extends StatelessWidget {
  final UpdateController controller = Get.put(UpdateController());

  UpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update Available')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (controller.latestUpdate.value != null) {
          final update = controller.latestUpdate.value!;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Version: ${update.version}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 16),
                Text(
                  'Changelog:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 8),
                Text(
                  update.changelog,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Spacer(),
                Center(
                  child: ElevatedButton(
                    onPressed: () => _launchURL(update.downloadUrl),
                    child: Text('Update Now'),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(child: Text('You are up to date! 🚀'));
        }
      }),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      Get.snackbar('Error', 'Could not launch update link');
    }
  }
}
