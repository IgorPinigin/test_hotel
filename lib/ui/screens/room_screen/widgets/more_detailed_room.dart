import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';

class MoreDetailedRoom extends StatelessWidget {
  const MoreDetailedRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: double.infinity,
      ),
      decoration: const BoxDecoration(
        color: ApplicationColors.blueColor10,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
            child: Text(
              "Подбробнее о номере",
              style: ApplicationTexts.blueTextStyle.copyWith(fontSize: 16),
            ),
          ),
          SvgPicture.asset(
            "assets/images/arrow_right_img.svg",
            colorFilter: const ColorFilter.mode(
                ApplicationColors.blueTextColor, BlendMode.srcIn),
          )
        ],
      ),
    );
  }
}
