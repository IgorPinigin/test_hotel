import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import 'package:test_hotel/ui/screens/hotel_screen/widgets/info_tile.dart';
import 'package:test_hotel/ui/widgets/application_divider.dart';

class TripleShortInformation extends StatelessWidget {
  const TripleShortInformation({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      decoration: const BoxDecoration(
        color: ApplicationColors.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      constraints: const BoxConstraints(maxHeight: double.infinity),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            InfoTile(
              text: ApplicationTexts.conveniences,
              icon: "assets/images/happy_img.svg",
              size: size,
            ),
            const ApplicationDivider(),
            InfoTile(
              text: ApplicationTexts.whatIsIncluded,
              icon: "assets/images/tick_square_img.svg",
              size: size,
            ),
            const ApplicationDivider(),
            InfoTile(
              text: ApplicationTexts.whatIsNotIncluded,
              icon: "assets/images/close_square_img.svg",
              size: size,
            ),
          ],
        ),
      ),
    );
  }
}
