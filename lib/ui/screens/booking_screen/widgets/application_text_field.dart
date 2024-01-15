import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';

class ApplicationTextField extends StatelessWidget {
  const ApplicationTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(maxHeight: double.infinity),
        decoration: const BoxDecoration(
          color: ApplicationColors.backgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: TextField(
            decoration: InputDecoration(
              constraints: BoxConstraints(maxHeight: double.infinity),
              filled: true,
              fillColor: ApplicationColors.backgroundColor,
              labelText: "Имя",
              floatingLabelAlignment: FloatingLabelAlignment.start,
              labelStyle: ApplicationTexts.greyTextFieldStyle,
              contentPadding: EdgeInsets.only(
                left: 16,
                //top: 10,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
