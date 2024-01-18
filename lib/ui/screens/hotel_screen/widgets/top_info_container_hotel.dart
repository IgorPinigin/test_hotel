import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/logic/models/hotel.dart';
import 'package:test_hotel/ui/widgets/name_and_location.dart';
import 'package:test_hotel/ui/widgets/price_text.dart';

class TopInfoContainerHotel extends StatelessWidget {
  const TopInfoContainerHotel({
    super.key,
    required this.hotel,
  });
  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: ApplicationColors.whiteColor,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(12),
        ),
      ),
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 8)),
            NameAndLocationHotel(
              rating: hotel.rating!,
              name: hotel.name!,
              adress: hotel.adress!,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: PriceText(
                textFrom: "от",
                price: hotel.minimalPrice!,
                text: hotel.priceForIt!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
