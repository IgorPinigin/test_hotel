import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';

class FactAboutHotelContainer extends StatelessWidget {
  final String text;

  const FactAboutHotelContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ApplicationColors.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      height: 29,
      constraints: const BoxConstraints(
        maxWidth: double.infinity,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          text,
          maxLines: 1,
          style: ApplicationTexts.greyTextStyle.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
