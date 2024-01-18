import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';

class ApplicationTextField extends StatelessWidget {
  const ApplicationTextField({
    super.key,
    required this.labelText,
    required this.keyboardType,
    required this.inputFormatters,
  });
  final String labelText;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
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
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: TextFormField(
            decoration: InputDecoration(
              constraints: const BoxConstraints(maxHeight: double.infinity),
              filled: true,
              fillColor: ApplicationColors.backgroundColor,
              labelText: labelText,
              floatingLabelAlignment: FloatingLabelAlignment.start,
              labelStyle: ApplicationTexts.greyTextFieldStyle,
              contentPadding: const EdgeInsets.only(
                left: 16,
                //top: 10,
              ),
              border: const OutlineInputBorder(
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
