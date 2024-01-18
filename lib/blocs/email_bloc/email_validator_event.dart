part of 'email_validator_bloc.dart';

sealed class EmailValidatorEvent extends Equatable {
  const EmailValidatorEvent();

  @override
  List<Object> get props => [];
}

class CheckEmailEvent extends EmailValidatorEvent {
  final TextEditingController email;

  const CheckEmailEvent({required this.email});
}
