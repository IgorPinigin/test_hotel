import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_hotel/constants/texts.dart';

class NameAndLocationHotel extends StatelessWidget {
  const NameAndLocationHotel({
    super.key,
    required this.rating,
    required this.name,
    required this.adress,
  });
  final int rating;
  final String name;
  final String adress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/images/${rating}stars.svg'),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            name,
            style: ApplicationTexts.largeTextStyle,
          ),
        ),
        Text(
          adress,
          style: ApplicationTexts.blueTextStyle,
        ),
      ],
    );
  }
}
