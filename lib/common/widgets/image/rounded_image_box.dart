import 'package:flutter/material.dart';
import 'package:gymgenius_v1/utils/constant/colors.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';

class KRoundedImage extends StatelessWidget {
  const KRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.borderRadius = KSizes.md,
    this.backgroundeColor = KColors.darkContainer,
    this.isNetwordImage = false,
    this.border,
    this.fit = BoxFit.contain,
    this.padding,
    this.onPressed,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundeColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetwordImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundeColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius:
              applyImageRadius
                  ? BorderRadius.circular(borderRadius)
                  : BorderRadius.zero,
          child: Image(
            image:
                isNetwordImage
                    ? NetworkImage(imageUrl)
                    : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
