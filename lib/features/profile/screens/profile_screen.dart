import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    final user = controller.user;

    return Scaffold(
      appBar: AppBar(title: const Text("Your Profile"), centerTitle: true),
      body:
          user == null
              ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center
                  ,
                  children: [
                    Text("No user info available."),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/login');
                      },
                      child: Text("Login"),
                    ),
                  ],
                ),
              )
              : Center(
                // Center the entire column horizontally and vertically
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize:
                        MainAxisSize.min, // Use min to avoid taking full height
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: const Icon(Icons.person, size: 50),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        user.displayName ?? "No Name",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        user.email ?? "No Email",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.logout),
                        label: const Text("Logout"),
                        onPressed: controller.signOut,
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}
