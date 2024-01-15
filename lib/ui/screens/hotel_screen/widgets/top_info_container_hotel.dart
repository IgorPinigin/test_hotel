import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/ui/widgets/name_and_location.dart';
import 'package:test_hotel/ui/widgets/price_text.dart';

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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NameAndLocationHotel(),
                PriceText(text: "от "),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
