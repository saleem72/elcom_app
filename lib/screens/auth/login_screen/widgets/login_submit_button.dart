//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../helpers/localization/language_constants.dart';
import '../../../../widgets/main_widgets.dart';
import '../login_bloc/login_bloc.dart';

class LoginSubmitButton extends StatelessWidget {
  const LoginSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return PrimaryButton(
          label: Translator.translation(context).login,
          onPressed: state.status.isValidated
              ? () => context.read<LoginBloc>().add(LoginFormSubmitted())
              : null,
        );
      },
    );
  }
}
