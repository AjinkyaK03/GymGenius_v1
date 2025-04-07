import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:gymgenius_v1/utils/constant/image_strings.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:get/get.dart';
import 'package:gymgenius_v1/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(KImages.onBoardingImage5),
                width: KHelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(height: KSizes.spaceBtwItems),

              /// Title and Subtitle
              Text(
                "Password Reset email sent",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: KSizes.spaceBtwItems),
              Text(
                "change",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: KSizes.spaceBtwSections),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Done"),
                ),
              ),
              SizedBox(height: KSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: (){},
                  child: Text("Resent email"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
