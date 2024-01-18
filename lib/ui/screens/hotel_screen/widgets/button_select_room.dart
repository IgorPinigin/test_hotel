import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import 'package:test_hotel/ui/widgets/application_button.dart';

class ButtonSelectRoom extends StatelessWidget {
  const ButtonSelectRoom({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ApplicationColors.whiteColor,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 16),
        child: ApplicationButton(
          onPressed: () {
            context.go(
              '/room/$name',
            );
          },
          text: ApplicationTexts.toSelectRoom,
        ),
      ),
    );
  }
}
