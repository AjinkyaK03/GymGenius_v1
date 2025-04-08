import 'package:flutter/material.dart';
import 'package:gymgenius_v1/common/widgets/appbar/appbar.dart';
import 'package:gymgenius_v1/utils/constant/colors.dart';

class KHomeAppBar extends StatelessWidget {
  const KHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return KAppBar(
      showBackArrrow: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hey AJ 👋",
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: KColors.white),
          ),
          Text(
            "You’re all set for today. Let’s get moving!",
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.apply(color: KColors.white),
          ),
        ],
      ),
    );
  }
}
