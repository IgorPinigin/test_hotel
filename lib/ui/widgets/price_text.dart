import 'package:flutter/material.dart';
import 'package:test_hotel/constants/texts.dart';

class PriceText extends StatelessWidget {
  const PriceText({
    super.key,
    required this.text,
    required this.textFrom,
    required this.price,
  });
  final String textFrom;
  final int price;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "$textFrom $price ${ApplicationTexts.ruble}",
          style: ApplicationTexts.priceTextStyle,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 3),
          child: Text(
            text,
            style: ApplicationTexts.greyTextStyle
                .copyWith(fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
