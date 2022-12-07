//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../helpers/localization/language_constants.dart';
import '../../../../widgets/app_big_button.dart';
import '../login_bloc/login_bloc.dart';

class LoginVisitorButton extends StatelessWidget {
  const LoginVisitorButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBigButton(
      onPressed: () => context.read<LoginBloc>().add(LoginFormSubmitted()),
      label: Translator.translation(context).visitor_login,
      foregroundColor: Colors.black,
      backgroundColor: Theme.of(context).colorScheme.secondary,
    );
  }
}
