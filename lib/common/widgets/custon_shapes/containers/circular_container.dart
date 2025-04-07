
import 'package:flutter/material.dart';
import 'package:gymgenius_v1/utils/constant/colors.dart';

class KCircularContainer extends StatelessWidget {
  const KCircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.backgroundColor = KColors.white,
  });

  final double? width;
  final double? height;
  final Widget? child;
  final double radius;
  final double padding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
