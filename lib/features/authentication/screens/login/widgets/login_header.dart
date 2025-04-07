import 'package:flutter/material.dart';
import 'package:gymgenius_v1/utils/constant/image_strings.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:gymgenius_v1/utils/helpers/helper_functions.dart';

class KLoginHeader extends StatelessWidget {
  const KLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(
            dark ? KImages.darkAppLogo : KImages.lightAppLogo,
          ),
          width: KHelperFunctions.screenWidth() * 0.5,
        ),
        Text(
          "Welcome back",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: KSizes.sm),
        Text("Get guidance from the experts", style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}