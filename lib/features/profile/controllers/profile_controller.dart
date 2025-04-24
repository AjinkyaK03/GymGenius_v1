import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get user => _auth.currentUser;

  Future<void> signOut() async {
    await _auth.signOut();
    Get.offAllNamed('/login'); // Update if login screen route is different
  }
}
