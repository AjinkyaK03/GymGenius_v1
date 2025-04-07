import 'package:gymgenius_v1/common/widgets/login_signup/form_divider.dart';
import 'package:gymgenius_v1/common/widgets/login_signup/social_buttons.dart';
import 'package:gymgenius_v1/features/authentication/screens/login/widgets/login_form.dart';
import 'package:gymgenius_v1/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter/material.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:gymgenius_v1/common/styles/spacing_styles.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Header 
              KLoginHeader(),

              /// Login Form 
              KLoginForm(),

              /// Divider
              KFormDivider(dividerText: "SIGN IN WITH",),
              const SizedBox(height: KSizes.spaceBtwSections,),

              /// Footer
              KSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
