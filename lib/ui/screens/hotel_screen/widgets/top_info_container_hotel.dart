import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import 'package:test_hotel/ui/widgets/price_text.dart';

import 'images_carousel_slider.dart';

class TopInfoContainerHotel extends StatelessWidget {
  const TopInfoContainerHotel({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      decoration: const BoxDecoration(
        color: ApplicationColors.whiteColor,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(12),
        ),
      ),
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImagesCarouselSlider(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: SvgPicture.asset('assets/images/5stars.svg'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Steigenberger Makadi",
                    style: ApplicationTexts.largeTextStyle,
                  ),
                ),
                const Text(
                  "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
                  style: ApplicationTexts.blueTextStyle,
                ),
                const PriceText(
                  text: "${ApplicationTexts.from} ",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
