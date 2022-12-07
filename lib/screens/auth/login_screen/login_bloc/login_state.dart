// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.phoneNumber = const PhoneNumber.pure(),
    this.password = const Password.pure(),
    this.status = FormzStatus.pure,
    this.failure,
  });

  final PhoneNumber phoneNumber;
  final Password password;
  final FormzStatus status;
  final Failure? failure;

  LoginState copyWith({
    PhoneNumber? phoneNumber,
    Password? password,
    FormzStatus? status,
    Failure? failure,
  }) {
    return LoginState(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password,
      status: status ?? this.status,
      failure: failure,
    );
  }

  @override
  List<Object> get props => [phoneNumber, password, status];
}
