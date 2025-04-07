import 'package:flutter/material.dart';
import 'package:gymgenius_v1/common/widgets/login_signup/form_divider.dart';
import 'package:gymgenius_v1/common/widgets/login_signup/social_buttons.dart';
import 'package:gymgenius_v1/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';



class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              /// Title
              Text("Lets's create aour account", style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: KSizes.spaceBtwSections),

              /// Form
              KSignupForm(),
              const SizedBox(height: KSizes.spaceBtwSections),

              /// Divider
              KFormDivider(dividerText: "SIGN UP WITH"),
              const SizedBox(height: KSizes.spaceBtwSections),

              /// Social icons
              const KSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
