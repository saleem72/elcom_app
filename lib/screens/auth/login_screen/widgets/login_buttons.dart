//

import 'package:elcom_app/helpers/localization/language_constants.dart';
import 'package:flutter/material.dart';

import 'login_submit_button.dart';
import 'login_visitor_button.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SizedBox(height: 32),
          LoginSubmitButton(),
          SizedBox(height: 16),
          LoginVisitorButton(),
        ]);
  }
}
