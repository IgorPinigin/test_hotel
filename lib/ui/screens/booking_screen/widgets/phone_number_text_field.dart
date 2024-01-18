import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneMask = MaskTextInputFormatter(mask: "+7 (###) ###-##-##");
    return Container(
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
          inputFormatters: [phoneMask],
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            constraints: BoxConstraints(maxHeight: double.infinity),
            filled: true,
            fillColor: ApplicationColors.backgroundColor,
            labelText: "Номер телефона",
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
    );
  }
}
