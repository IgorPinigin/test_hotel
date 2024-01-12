import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_hotel/constants/texts.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({
    Key? key,
    required this.size,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final Size size;
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: size.width,
      child: Row(
        children: [
          SvgPicture.asset(icon),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: ApplicationTexts.infoTileStyle,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 2)),
                  const Text(
                    ApplicationTexts.mostImportant,
                    style: ApplicationTexts.greyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          SvgPicture.asset("assets/images/arrow_right_img.svg"),
        ],
      ),
    );
  }
}
