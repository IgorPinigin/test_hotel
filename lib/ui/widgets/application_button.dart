import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';

class ApplicationButton extends StatelessWidget {
  const ApplicationButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.size,
  });

  final Size size;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            fixedSize: Size(size.width, 48),
            backgroundColor: ApplicationColors.applicationButtonColor),
        child: Text(
          text,
          style: ApplicationTexts.buttonTextStyle,
        ),
      ),
    );
  }
}
