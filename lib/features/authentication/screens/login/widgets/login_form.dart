import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gymgenius_v1/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:gymgenius_v1/features/authentication/screens/signup/signup.dart';
import 'package:gymgenius_v1/navigation_menu.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:iconsax/iconsax.dart';

class KLoginForm extends StatelessWidget {
  const KLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: KSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: "Email",
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: "Password",
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwInputFields / 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text("Remember Me"),
                  ],
                ),

                // forget password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text("Forget Password"),
                ),
              ],
            ),
            const SizedBox(height: KSizes.defaultSpace),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => const NavigationMenu()),
                child: Text("Sign In"),
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignupScreen());
                },
                child: Text("Create Account"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
