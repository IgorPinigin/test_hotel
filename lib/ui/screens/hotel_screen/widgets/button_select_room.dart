import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import 'package:test_hotel/ui/widgets/application_button.dart';

class ButtonSelectRoom extends StatelessWidget {
  const ButtonSelectRoom({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        decoration: const BoxDecoration(
          color: ApplicationColors.whiteColor,
        ),
        child: ApplicationButton(
            onPressed: () {}, text: ApplicationTexts.toSelectRoom, size: size),
      ),
    );
  }
}
