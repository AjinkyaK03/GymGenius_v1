import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';
import 'package:gymgenius_v1/utils/device/device_utility.dart';

class KAppBar extends StatelessWidget {
  const KAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.showBackArrrow = true,
  });

  final Widget? title;
  final bool showBackArrrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading:
            showBackArrrow
                ? IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.arrow_back_ios_new),
                )
                : leadingIcon != null
                ? IconButton(
                  onPressed: leadingOnPressed,
                  icon: Icon(leadingIcon),
                )
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  Size get PreferredSize => Size.fromHeight(KDeviceUtils.getAppBarHeight());
}
