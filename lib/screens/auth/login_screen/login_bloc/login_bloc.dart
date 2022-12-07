import 'package:bloc/bloc.dart';
import 'package:elcom_app/helpers/auth_manager/auth_cubit/auth_cubit.dart';
import 'package:elcom_app/models/failure.dart';
import 'package:elcom_app/screens/auth/login_screen/service/login_service.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

import '../../../../models/models.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthCubit _authCubit;
  final LoginService _service;
  LoginBloc({required AuthCubit authCubit, required LoginService service})
      : _authCubit = authCubit,
        _service = service,
        super(const LoginState()) {
    on<LoginPhoneNumberChanged>(_onPhoneNumberChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginPhoneNumberUnfocused>(_onEmailUnfocused);
    on<LoginPasswordUnfocused>(_onPasswordUnfocused);
    on<LoginFormSubmitted>(_onFormSubmitted);
    on<LoginVisitorSubmitted>(_onVisitorSubmitted);
  }

  @override
  void onTransition(Transition<LoginEvent, LoginState> transition) {
    // print(transition);
    super.onTransition(transition);
  }

  void _onPhoneNumberChanged(
      LoginPhoneNumberChanged event, Emitter<LoginState> emit) {
    final phoneNumber = PhoneNumber.dirty(event.phoneNumber);
    emit(state.copyWith(
      phoneNumber:
          phoneNumber.valid ? phoneNumber : PhoneNumber.pure(event.phoneNumber),
      status: Formz.validate([phoneNumber, state.password]),
    ));
  }

  void _onPasswordChanged(
      LoginPasswordChanged event, Emitter<LoginState> emit) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
      password: password.valid ? password : Password.pure(event.password),
      status: Formz.validate([state.phoneNumber, password]),
    ));
  }

  void _onEmailUnfocused(
      LoginPhoneNumberUnfocused event, Emitter<LoginState> emit) {
    final phoneNumber = PhoneNumber.dirty(state.phoneNumber.value);
    emit(state.copyWith(
      phoneNumber: phoneNumber,
      status: Formz.validate([phoneNumber, state.password]),
    ));
  }

  void _onPasswordUnfocused(
      LoginPasswordUnfocused event, Emitter<LoginState> emit) {
    final password = Password.dirty(state.password.value);
    emit(state.copyWith(
      password: password,
      status: Formz.validate([state.phoneNumber, password]),
    ));
  }

  void _onFormSubmitted(
      LoginFormSubmitted event, Emitter<LoginState> emit) async {
    final phoneNumber = PhoneNumber.dirty(state.phoneNumber.value);
    final password = Password.dirty(state.password.value);
    emit(state.copyWith(
      phoneNumber: phoneNumber,
      password: password,
      status: Formz.validate([phoneNumber, password]),
    ));
    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        final user = await _service.login(
          phoneNumber: phoneNumber.value,
          password: password.value,
        );
        _authCubit.userLogedIn(user);
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      } catch (ex) {
        if (ex is Failure) {
          emit(state.copyWith(
            status: FormzStatus.submissionFailure,
            failure: ex,
          ));
        } else {
          emit(state.copyWith(
            status: FormzStatus.submissionFailure,
            failure: const Failure(message: 'unKnown error'),
          ));
        }
      }
    }
  }

  void _onVisitorSubmitted(
      LoginVisitorSubmitted event, Emitter<LoginState> emit) async {}
}
