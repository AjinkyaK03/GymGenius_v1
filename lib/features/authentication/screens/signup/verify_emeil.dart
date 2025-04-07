import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gymgenius_v1/common/widgets/success_screen/success_screen.dart';
import 'package:gymgenius_v1/features/authentication/screens/login/login.dart';
import 'package:gymgenius_v1/utils/constant/image_strings.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:gymgenius_v1/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(KImages.verifyMail),
                width: KHelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(height: KSizes.spaceBtwItems),

              ///
              /// Title and Subtitle
              Text(
                "Verify your email address",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: KSizes.spaceBtwItems),
              Text(
                "support@gymgenius.com",
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: KSizes.spaceBtwItems),
              Text(
                "Congraulatio! your account is created, confirm your email by clicking on link in mail",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: KSizes.spaceBtwSections),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:
                      () => Get.to(
                        () => SuccessScreen(
                          image: KImages.verifyMail,
                          title: "Your account created",
                          subtitle: "Congraulatio! your account is created",
                          onPressed: () => Get.to(() => const LoginScreen()),
                        ),
                      ),
                  child: Text("Contiue"),
                ),
              ),
              const SizedBox(height: KSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: () {}, child: Text("Contiue")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
