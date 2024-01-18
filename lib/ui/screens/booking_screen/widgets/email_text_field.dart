import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_hotel/blocs/email_bloc/email_validator_bloc.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    //context.read<EmailValidatorBloc>().emit(ValidatorState(isValidate: false));
    TextEditingController emailController = TextEditingController();
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
        child: BlocBuilder<EmailValidatorBloc, EmailValidatorState>(
            builder: (context, state) {
          state = ValidatorState(isValidate: true);
          if (state is ValidatorState) {
            return TextFormField(
              controller: emailController,
              onTapOutside: (event) {
                print("fet");
                context
                    .read<EmailValidatorBloc>()
                    .add(CheckEmailEvent(email: emailController));
                FocusManager.instance.primaryFocus?.unfocus();
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                constraints: BoxConstraints(maxHeight: double.infinity),
                filled: true,
                fillColor: state.isValidate
                    ? ApplicationColors.backgroundColor
                    : Colors.red,
                labelText: "Почта",
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
            );
          } else {
            return CircularProgressIndicator();
          }
        }),
      ),
    );
  }
}
