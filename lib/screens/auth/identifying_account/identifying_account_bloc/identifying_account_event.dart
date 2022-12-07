part of 'identifying_account_bloc.dart';

abstract class IdentifyingAccountEvent extends Equatable {
  const IdentifyingAccountEvent();

  @override
  List<Object> get props => [];
}

class IdentifyingAccountPhoneNumberChanged extends IdentifyingAccountEvent {
  const IdentifyingAccountPhoneNumberChanged({required this.phoneNumber});

  final String phoneNumber;

  @override
  List<Object> get props => [phoneNumber];
}

class IdentifyingAccountPhoneNumberUnfocused extends IdentifyingAccountEvent {}

class IdentifyingAccountFormSubmitted extends IdentifyingAccountEvent {}
