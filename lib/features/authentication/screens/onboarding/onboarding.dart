import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:gymgenius_v1/utils/constant/text_string.dart';
import 'package:gymgenius_v1/utils/device/device_utility.dart';
import 'package:gymgenius_v1/utils/constant/image_strings.dart';
import 'package:gymgenius_v1/features/authentication/screens/onboarding/widgets/OnBoardingPage.dart';
import 'package:gymgenius_v1/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:gymgenius_v1/features/authentication/screens/onboarding/widgets/OnBoardingDotNavigation.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: KImages.onBoardingImage1,
                title: KTextString.onBoardingText1,
                subtitle: KTextString.onBoardingSubText1,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage2,
                title: KTextString.onBoardingText2,
                subtitle: KTextString.onBoardingSubText2,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage3,
                title: KTextString.onBoardingText3,
                subtitle: KTextString.onBoardingSubText3,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage4,
                title: KTextString.onBoardingText4,
                subtitle: KTextString.onBoardingSubText4,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage5,
                title: KTextString.onBoardingText5,
                subtitle: KTextString.onBoardingSubText5,
              ),
            ],
          ),

          // Skip button
          Positioned(
            top: KDeviceUtils.getAppBarHeight(),
            right: KSizes.defaultSpace,
            child: TextButton(
              onPressed: () => OnBoardingController.instance.skipPage(),
              child: const Text('Skip'),
            ),
          ),

          // Dot navigation
          OnBoardingDotNavigation(),

          // circular button
          Positioned(
            right: KSizes.defaultSpace,
            bottom: KDeviceUtils.getBottomNavigationBarHeight(),
            child: ElevatedButton(
              onPressed: () => OnBoardingController.instance.nextPage(),
              style: ElevatedButton.styleFrom(shape: CircleBorder()),
              child: const Icon(Iconsax.arrow_right_3),
            ),
          ),
        ],
      ),
    );
  }
}
