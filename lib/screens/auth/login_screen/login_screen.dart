//

import 'package:elcom_app/helpers/auth_manager/auth_cubit/auth_cubit.dart';
import 'package:elcom_app/helpers/routing/nav_links.dart';
import 'package:elcom_app/screens/auth/login_screen/login_bloc/login_bloc.dart';
import 'package:elcom_app/screens/auth/login_screen/service/login_service_mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../widgets/main_widgets.dart';
import 'login_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(
        authCubit: context.read<AuthCubit>(),
        service: LoginServiceMock(),
      ),
      child: const LoginScreenContent(),
    );
  }
}

class LoginScreenContent extends StatefulWidget {
  const LoginScreenContent({super.key});

  @override
  State<LoginScreenContent> createState() => _LoginScreenContentState();
}

class _LoginScreenContentState extends State<LoginScreenContent> {
  final _phoneNumberFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _phoneNumberFocusNode.addListener(() {
      if (!_phoneNumberFocusNode.hasFocus) {
        context.read<LoginBloc>().add(LoginPhoneNumberUnfocused());
        FocusScope.of(context).requestFocus(_passwordFocusNode);
      }
    });
    _passwordFocusNode.addListener(() {
      if (!_passwordFocusNode.hasFocus) {
        context.read<LoginBloc>().add(LoginPasswordUnfocused());
      }
    });
  }

  @override
  void dispose() {
    _phoneNumberFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Stack(
          children: [
            Scaffold(
              body: AuthScreensBackground(
                child: _content(context),
              ),
            ),
            LoadingView(isVisible: state.status.isSubmissionInProgress),
          ],
        );
      },
    );
  }

  Widget _content(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const LoginInfoSection(),
              const SizedBox(height: 8),
              const LoginFailureView(),
              const SizedBox(height: 8),
              LoginInputs(
                phoneNumberFocusNode: _phoneNumberFocusNode,
                passwordFocusNode: _passwordFocusNode,
                onResetPassword: () => Navigator.of(context)
                    .pushNamed(NavLinks.identifyingAccount),
              ),
              const SizedBox(height: 8),
              const LoginButtons(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ],
    );
  }
}
