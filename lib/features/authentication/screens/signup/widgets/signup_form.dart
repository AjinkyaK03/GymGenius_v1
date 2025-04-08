import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gymgenius_v1/features/authentication/screens/signup/verify_emeil.dart';
import 'package:gymgenius_v1/utils/constant/colors.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:gymgenius_v1/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class KSignupForm extends StatelessWidget {
  const KSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          /// First Name
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "First Name",
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: KSizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Last Name",
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: KSizes.spaceBtwInputFields),

          /// Email,
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: KSizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Phone",
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: KSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: KSizes.spaceBtwInputFields / 2),

          /// Term and condition
          Row(
            children: [
              SizedBox(child: Checkbox(value: false, onChanged: (value) {})),
              const SizedBox(width: KSizes.spaceBtwItems),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'I agree to ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Privacy Policy ',
                      style: Theme.of(context).textTheme.bodyMedium?.apply(
                        color: dark ? KColors.white : KColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? KColors.white : KColors.primary,
                      ),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Terms of use',
                      style: Theme.of(context).textTheme.bodyMedium?.apply(
                        color: dark ? KColors.white : KColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? KColors.white : KColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: KSizes.spaceBtwSections),

          /// Sign up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text("Create Account"),
            ),
          ),
        ],
      ),
    );
  }
}
