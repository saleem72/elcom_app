//

import 'package:elcom_app/widgets/main_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../helpers/localization/language_constants.dart';
import '../login_bloc/login_bloc.dart';

class LoginPasswordSection extends StatelessWidget {
  const LoginPasswordSection({
    Key? key,
    required FocusNode passwordFocusNode,
  })  : _passwordFocusNode = passwordFocusNode,
        super(key: key);

  final FocusNode _passwordFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            TitleText(label: Translator.translation(context).password),
            ValidationMessage(
              isInValid: state.password.invalid,
              validationMessage:
                  Translator.translation(context).password_validation_error,
            ),
            const SizedBox(height: 8),
            LoginPasswordInput(
              focusNode: _passwordFocusNode,
              initialValue: state.password.value,
              hasError: state.password.invalid,
            ),
          ],
        );
      },
    );
  }
}

class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({
    Key? key,
    required this.focusNode,
    required this.hasError,
    required this.initialValue,
  }) : super(key: key);

  final FocusNode focusNode;
  final String initialValue;
  final bool hasError;
  @override
  Widget build(BuildContext context) {
    return ValidatedTextField(
      focusNode: focusNode,
      initialValue: initialValue,
      hint: Translator.translation(context).password_hint,
      hasError: hasError,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.visiblePassword,
      onChange: (value) {
        context.read<LoginBloc>().add(LoginPasswordChanged(password: value));
      },
    );
  }
}
