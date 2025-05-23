import 'package:flutter/material.dart';
import 'package:gymgenius_v1/utils/constant/colors.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:gymgenius_v1/utils/helpers/helper_functions.dart';

class KVerticalImageText extends StatelessWidget {
  const KVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = KColors.white,
    this.backgroundColor = KColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final darkmode = KHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: KSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(KSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ??
                    (darkmode ? KColors.black : KColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  // color: KColors.dark,
                ),
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                "facebook",
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
