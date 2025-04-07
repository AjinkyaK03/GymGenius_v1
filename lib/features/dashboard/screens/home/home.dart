import 'package:flutter/material.dart';
import 'package:gymgenius_v1/common/widgets/appbar/appbar.dart';
import 'package:gymgenius_v1/common/widgets/custon_shapes/containers/primary_header_container.dart';
import 'package:gymgenius_v1/utils/constant/colors.dart';
import 'package:gymgenius_v1/utils/constant/text_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            KPrimaryHeaderContainer(
              child: Column(
                children: [
                  KAppBar(
                    showBackArrrow: false,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          KTextString.homePageGreeting,
                          style: Theme.of(
                            context,
                          ).textTheme.labelMedium!.apply(color: KColors.grey),
                        ),
                        Text(
                          "Ajinkya Kadam",
                          style: Theme.of(context).textTheme.headlineSmall!
                              .apply(color: KColors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
