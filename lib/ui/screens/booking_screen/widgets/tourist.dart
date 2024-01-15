import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_hotel/constants/texts.dart';

class Tourist extends StatelessWidget {
  const Tourist({
    super.key,
    required this.number,
  });
  final String number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 12, left: 16, right: 16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "$number турист",
                  style: ApplicationTexts.largeTextStyle,
                ),
              ),
              GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset("assets/images/arrow_top_img.svg")
                  // : SvgPicture.asset("assets/images/arrow_bottom_img.svg"),
                  )
            ],
          ),
          // showHideInfo
          //     ? const Column(
          //         children: [
          //           NewWidget(),
          //           NewWidget(),
          //         ],
          //       )
          //     : const SizedBox(),
        ],
      ),
    );
  }
}
