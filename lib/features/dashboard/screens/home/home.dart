import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gymgenius_v1/common/widgets/custon_shapes/containers/circular_container.dart';
import 'package:gymgenius_v1/common/widgets/custon_shapes/containers/primary_header_container.dart';
import 'package:gymgenius_v1/common/widgets/custon_shapes/containers/search_container.dart';
import 'package:gymgenius_v1/common/widgets/image/rounded_image_box.dart';
import 'package:gymgenius_v1/common/widgets/image/vertical_image_text.dart';
import 'package:gymgenius_v1/common/widgets/text/section_heading.dart';
import 'package:gymgenius_v1/features/dashboard/screens/home/widgets/home_appbar.dart';
import 'package:gymgenius_v1/utils/constant/colors.dart';
import 'package:gymgenius_v1/utils/constant/image_strings.dart';
import 'package:gymgenius_v1/utils/constant/sizes.dart';

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
                  /// Appbar
                  KHomeAppBar(),
                  const SizedBox(height: KSizes.spaceBtwSections),

                  /// Searchbar
                  KSearchContainer(text: 'Search'),
                  const SizedBox(height: KSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: const EdgeInsets.only(left: KSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        KSectionHeading(
                          title: 'Categories',
                          showActionButton: false,
                          textColor: KColors.white,
                        ),
                        const SizedBox(height: KSizes.spaceBtwItems),

                        /// categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return KVerticalImageText(
                                image: KImages.facebook,
                                title: 'Categories',
                                onTap: () {},
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwSections),

            ImageCarousel(),
          ],
        ),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KSizes.defaultSpace),
      child: Column(
        children: [
          CarouselSlider(
            items: [
              KRoundedImage(imageUrl: KImages.homeBanner1),
              KRoundedImage(imageUrl: KImages.homeBanner2),
              KRoundedImage(imageUrl: KImages.homeBanner3),
              KRoundedImage(imageUrl: KImages.twitter),
            ],
            options: CarouselOptions(viewportFraction: 1),
          ),
          const SizedBox(height: KSizes.spaceBtwItems),

          KCircularContainer(
            width: 20,
            height: 4,
            backgroundColor: KColors.succeess,
          ),
        ],
      ),
    );
  }
}
