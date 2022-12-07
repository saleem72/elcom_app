//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../helpers/localization/language_constants.dart';
import '../login_bloc/login_bloc.dart';

class LoginSubmitButton extends StatelessWidget {
  const LoginSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return TextButton(
          onPressed: state.status.isValidated
              ? () => context.read<LoginBloc>().add(LoginFormSubmitted())
              : null,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Theme.of(context).colorScheme.primary,
            fixedSize: const Size.fromHeight(50),
            disabledBackgroundColor:
                Theme.of(context).colorScheme.primary.withOpacity(0.7),
            disabledForegroundColor: Colors.white,
          ),
          child: Text(
            Translator.translation(context).login,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
          ),
        );
      },
    );
  }
}
