// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginPhoneNumberChanged extends LoginEvent {
  const LoginPhoneNumberChanged({required this.phoneNumber});

  final String phoneNumber;

  @override
  List<Object> get props => [phoneNumber];
}

class LoginPhoneNumberUnfocused extends LoginEvent {}

class LoginPasswordChanged extends LoginEvent {
  const LoginPasswordChanged({required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}

class LoginPasswordUnfocused extends LoginEvent {}

class LoginFormSubmitted extends LoginEvent {}

class LoginVisitorSubmitted extends LoginEvent {}
