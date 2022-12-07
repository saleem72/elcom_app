//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../widgets/main_widgets.dart';
import '../login_bloc/login_bloc.dart';

class LoginFailureView extends StatelessWidget {
  const LoginFailureView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return state.status == FormzStatus.submissionFailure
          ? FailureText(message: state.failure?.message ?? '')
          : const SizedBox.shrink();
    });
  }
}
