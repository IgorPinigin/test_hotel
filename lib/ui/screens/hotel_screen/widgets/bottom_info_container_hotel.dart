import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import 'package:test_hotel/logic/models/hotel.dart';
import '../../../widgets/small_cards_info.dart';
import 'triple_short_information.dart';

class BottomInfoContainerHotel extends StatelessWidget {
  const BottomInfoContainerHotel({super.key, required this.hotel});

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: ApplicationColors.whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              ApplicationTexts.aboutHotel,
              style: ApplicationTexts.largeTextStyle,
            ),
            const Padding(padding: EdgeInsets.only(top: 16)),
            SmallCardsInfo(facts: hotel.aboutTheHotel!.peculiarities!),
            const Padding(padding: EdgeInsets.only(top: 12)),
            RichText(
              text: TextSpan(
                  text: hotel.aboutTheHotel!.description!,
                  style: ApplicationTexts.infoAboutHotelStyle),
            ),
            const Padding(padding: EdgeInsets.only(top: 16)),
            const TripleShortInformation(),
          ],
        ),
      ),
    );
  }
}
