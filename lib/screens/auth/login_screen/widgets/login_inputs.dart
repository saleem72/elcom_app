//

import 'package:elcom_app/widgets/main_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../helpers/localization/language_constants.dart';
import 'password_section.dart';
import 'phone_number_section.dart';

class LoginInputs extends StatelessWidget {
  const LoginInputs({
    Key? key,
    required FocusNode phoneNumberFocusNode,
    required FocusNode passwordFocusNode,
    required this.onResetPassword,
  })  : _phoneNumberFocusNode = phoneNumberFocusNode,
        _passwordFocusNode = passwordFocusNode,
        super(key: key);

  final FocusNode _phoneNumberFocusNode;
  final FocusNode _passwordFocusNode;
  final Function onResetPassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        LoginPhoneNumberSection(phoneNumberFocusNode: _phoneNumberFocusNode),
        const SizedBox(height: 8),
        LoginPasswordSection(passwordFocusNode: _passwordFocusNode),
        TextButton(
          onPressed: () => onResetPassword(),
          style: TextButton.styleFrom(
            alignment: Alignment.centerLeft,
          ),
          child:
              TitleText(label: Translator.translation(context).reset_password),
        ),
      ],
    );
  }
}
