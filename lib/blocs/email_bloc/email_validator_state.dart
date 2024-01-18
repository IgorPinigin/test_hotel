part of 'email_validator_bloc.dart';

sealed class EmailValidatorState extends Equatable {
  const EmailValidatorState();

  @override
  List<Object> get props => [];
}

final class EmailValidatorInitial extends EmailValidatorState {}

final class ValidatorState extends EmailValidatorState {
  final bool isValidate;

  const ValidatorState({required this.isValidate});
}
