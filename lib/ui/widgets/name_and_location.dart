import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_hotel/constants/texts.dart';

class NameAndLocationHotel extends StatelessWidget {
  const NameAndLocationHotel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
