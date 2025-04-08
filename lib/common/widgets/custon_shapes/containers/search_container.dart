import 'package:flutter/material.dart';
import 'package:gymgenius_v1/utils/constant/colors.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:gymgenius_v1/utils/device/device_utility.dart';
import 'package:gymgenius_v1/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class KSearchContainer extends StatelessWidget {
  const KSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final darkmode = KHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KSizes.defaultSpace),
      child: Container(
        width: KDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(KSizes.md),
        decoration: BoxDecoration(
          color:
              showBackground
                  ? darkmode
                      ? KColors.dark
                      : KColors.light
                  : Colors.transparent,
          borderRadius: BorderRadius.circular(KSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: KColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(Iconsax.search_normal, color: KColors.darkGrey),
            const SizedBox(width: KSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
