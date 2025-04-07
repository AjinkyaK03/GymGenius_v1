import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gymgenius_v1/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Heading
            Text(
              "Forget Password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: KSizes.spaceBtwItems),
            Text(
              "enter email we will send you password reset link",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: KSizes.spaceBtwSections * 2),

            /// Text field
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwSections),

            /// Submit form
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const ResetPassword()),
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
