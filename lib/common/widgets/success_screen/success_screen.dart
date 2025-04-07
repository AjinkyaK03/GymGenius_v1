import 'package:flutter/material.dart';
import 'package:gymgenius_v1/common/styles/spacing_styles.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:gymgenius_v1/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, this.image, this.title, this.subtitle, required this.onPressed,});

  final image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(image),
                width: KHelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(height: KSizes.spaceBtwItems),

              /// Title and Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: KSizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: KSizes.spaceBtwSections),

              /// Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text("Contiue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
