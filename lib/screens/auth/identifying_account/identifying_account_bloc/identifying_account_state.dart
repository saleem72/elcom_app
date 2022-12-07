// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'identifying_account_bloc.dart';

class IdentifyingAccountState extends Equatable {
  const IdentifyingAccountState({
    this.phoneNumber = const PhoneNumber.pure(),
    this.status = FormzStatus.pure,
    this.failure,
  });

  final PhoneNumber phoneNumber;
  final FormzStatus status;
  final Failure? failure;

  @override
  List<Object> get props => [];

  IdentifyingAccountState copyWith({
    PhoneNumber? phoneNumber,
    FormzStatus? status,
    Failure? failure,
  }) {
    return IdentifyingAccountState(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      status: status ?? this.status,
      failure: failure,
    );
  }
}
