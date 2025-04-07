import 'package:flutter/material.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:gymgenius_v1/utils/constant/colors.dart';
import 'package:gymgenius_v1/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:gymgenius_v1/features/authentication/controllers/onboarding/onboarding_controller.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: KDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: KSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 5,
        effect: ExpandingDotsEffect(
          activeDotColor: KColors.primary,
          dotHeight: 6,
        ),
      ),
    );
  }
}
