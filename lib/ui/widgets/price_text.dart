import 'package:flutter/material.dart';
import 'package:test_hotel/constants/texts.dart';

class PriceText extends StatelessWidget {
  const PriceText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "${text}134 673 ${ApplicationTexts.ruble}",
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
    );
  }
}
