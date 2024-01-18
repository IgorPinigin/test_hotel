import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';

class ApplicationButton extends StatelessWidget {
  const ApplicationButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          fixedSize: Size(MediaQuery.of(context).size.width, 48),
          backgroundColor: ApplicationColors.applicationButtonColor),
      child: Text(
        text,
        style: ApplicationTexts.buttonTextStyle,
      ),
    );
  }
}
