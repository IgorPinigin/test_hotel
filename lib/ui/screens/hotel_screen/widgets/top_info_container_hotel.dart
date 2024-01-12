import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';

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
      height: 429,
      decoration: const BoxDecoration(
          color: ApplicationColors.whiteColor,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImagesCarouselSlider(size: size),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: SvgPicture.asset('assets/images/5stars.svg'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Steigenberger Makadi",
              style: ApplicationTexts.largeTextStyle,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
              style: ApplicationTexts.blueTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "от 134 673 ₽",
                  style: ApplicationTexts.priceTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 3),
                  child: Text(
                    "за тур с перелётом",
                    style: ApplicationTexts.greyTextStyle
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
