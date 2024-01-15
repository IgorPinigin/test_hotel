import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
    const String text = "Hotel";
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 16),
      child: Container(
        decoration: const BoxDecoration(
          color: ApplicationColors.whiteColor,
        ),
        child: ApplicationButton(
            onPressed: () {
              context.go(
                '/room/$text',
              );
            },
            text: ApplicationTexts.toSelectRoom,
            size: size),
      ),
    );
  }
}
