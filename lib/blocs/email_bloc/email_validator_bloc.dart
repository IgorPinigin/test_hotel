import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:email_validator/email_validator.dart';

part 'email_validator_event.dart';
part 'email_validator_state.dart';

class EmailValidatorBloc
    extends Bloc<EmailValidatorEvent, EmailValidatorState> {
  EmailValidatorBloc() : super(EmailValidatorInitial()) {
    on<CheckEmailEvent>(_checkValidate);
  }

  void _checkValidate(
      CheckEmailEvent event, Emitter<EmailValidatorState> emit) {
    final bool isValid = EmailValidator.validate(event.email.text);
    print('object');
    emit(ValidatorState(isValidate: isValid));
  }
}
