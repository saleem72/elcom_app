//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../helpers/localization/language_constants.dart';
import '../../../../widgets/main_widgets.dart';
import '../login_bloc/login_bloc.dart';

class LoginPhoneNumberSection extends StatelessWidget {
  const LoginPhoneNumberSection({
    Key? key,
    required FocusNode phoneNumberFocusNode,
  })  : _phoneNumberFocusNode = phoneNumberFocusNode,
        super(key: key);

  final FocusNode _phoneNumberFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            TitleText(label: Translator.translation(context).phone_number),
            ValidationMessage(
              isInValid: state.phoneNumber.invalid,
              validationMessage:
                  Translator.translation(context).phone_number_validation_error,
            ),
            const SizedBox(height: 8),
            LoginPhoneNumberInput(
              focusNode: _phoneNumberFocusNode,
              initialValue: state.phoneNumber.value,
              hasError: state.phoneNumber.invalid,
            ),
          ],
        );
      },
    );
  }
}

class LoginPhoneNumberInput extends StatelessWidget {
  const LoginPhoneNumberInput({
    Key? key,
    required this.focusNode,
    required this.initialValue,
    required this.hasError,
  }) : super(key: key);

  final FocusNode focusNode;
  final String initialValue;
  final bool hasError;

  @override
  Widget build(BuildContext context) {
    return ValidatedTextField(
      focusNode: focusNode,
      initialValue: initialValue,
      hint: Translator.translation(context).phone_number_hint,
      hasError: hasError,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.phone,
      onChange: (value) {
        context
            .read<LoginBloc>()
            .add(LoginPhoneNumberChanged(phoneNumber: value));
      },
    );
  }
}
