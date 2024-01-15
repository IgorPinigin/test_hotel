import 'package:flutter/material.dart';
import 'package:test_hotel/constants/texts.dart';

class RowWithDataBooking extends StatelessWidget {
  const RowWithDataBooking({
    super.key,
    required this.constText,
    required this.text,
  });

  final String constText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  constText,
                  style: ApplicationTexts.greyTextStyle
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: ApplicationTexts.infoAboutHotelStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
