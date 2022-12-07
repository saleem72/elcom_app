//

import 'package:elcom_app/helpers/auth_manager/auth_cubit/auth_cubit.dart';
import 'package:elcom_app/helpers/localization/language_constants.dart';
import 'package:elcom_app/helpers/routing/nav_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/main_widgets.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthScreensBackground(
        child: _content(context),
      ),
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
              _informSection(context),
              const SizedBox(height: 16),
              _inputs(context),
              const SizedBox(height: 40),
              _buttons(context),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buttons(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppBigButton(
          onPressed: () {},
          label: Translator.translation(context).reset,
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
      ],
    );
  }

  Column _informSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          Translator.translation(context).reset_password_info_tag,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          Translator.translation(context).reset_password_info_message,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                height: 1.3,
              ),
        ),
      ],
    );
  }

  Widget _inputs(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TitleText(label: Translator.translation(context).password),
        const SizedBox(height: 8),
        AppTextField(
          controller: password,
          hint: Translator.translation(context).password_hint,
        ),
        const SizedBox(height: 8),
        Text(
          Translator.translation(context).reset_password_password_term,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                height: 1.3,
              ),
        ),
      ],
    );
  }
}
