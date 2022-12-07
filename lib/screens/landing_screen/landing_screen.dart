//

import 'package:elcom_app/helpers/auth_manager/auth_cubit/auth_cubit.dart';
import 'package:elcom_app/helpers/auth_manager/models/auth_status.dart';
import 'package:elcom_app/helpers/network_manager/network_manager_cubit.dart';
import 'package:elcom_app/screens/auth/test_validation/test_validation_screen.dart';
import 'package:elcom_app/screens/no_internet_screen/no_internet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../main_screens.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NetworkManagerCubit, NetworkManagerState>(
      builder: (context, state) {
        if (state.isConnected) {
          return const AuthScreen();
        } else {
          return const NoInternetScreen();
        }
      },
    );
  }
}

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        switch (state.target) {
          case AuthStatus.onBoarding:
            return const OnBoardingScreen();
          case AuthStatus.login:
            return const LoginScreen();
          case AuthStatus.register:
            return const RegisterScreen();
          case AuthStatus.home:
            return const HomeScreen();
        }
      },
    );
  }
}
