import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';

class MoreDetailedRoom extends StatelessWidget {
  const MoreDetailedRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: 196,
        height: 29,
        decoration: const BoxDecoration(
          color: ApplicationColors.blueColor10,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Подбробнее о номере",
              style: ApplicationTexts.blueTextStyle.copyWith(fontSize: 16),
            ),
            SvgPicture.asset(
              "assets/images/arrow_right_img.svg",
              colorFilter: const ColorFilter.mode(
                  ApplicationColors.blueTextColor, BlendMode.srcIn),
            )
          ],
        ),
      ),
    );
  }
}
