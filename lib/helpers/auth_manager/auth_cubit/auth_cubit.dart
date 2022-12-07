import 'package:bloc/bloc.dart';
import 'package:elcom_app/helpers/auth_manager/models/auth_status.dart';
import 'package:elcom_app/helpers/safe/safe.dart';
import 'package:elcom_app/models/user.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final Safe safe;
  User user = User.defaultUser;
  AuthCubit({
    required this.safe,
  }) : super(AuthState(target: safe.getAuthStatus()));

  endOnboarding() async {
    await safe.endOnBoardingStatus();
    emit(const AuthState(target: AuthStatus.login));
  }

  userLogedIn(User user) {
    this.user = user;
    emit(const AuthState(target: AuthStatus.home));
  }
}
