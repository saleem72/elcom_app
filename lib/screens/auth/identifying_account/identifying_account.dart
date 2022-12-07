//
//

import 'package:elcom_app/helpers/localization/language_constants.dart';
import 'package:elcom_app/helpers/routing/nav_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/main_widgets.dart';

class IdentifyingAccountScreen extends StatefulWidget {
  const IdentifyingAccountScreen({super.key});

  @override
  State<IdentifyingAccountScreen> createState() =>
      _IdentifyingAccountScreenState();
}

class _IdentifyingAccountScreenState extends State<IdentifyingAccountScreen> {
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthScreensBackground(
        showBackButton: true,
        bottonCircle: true,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  _informSection(context),
                  const SizedBox(height: 16),
                  _inputs(context),
                  const SizedBox(height: 8),
                ],
              ),
              const SizedBox(height: 40),
              Column(
                children: [
                  _buttons(context),
                  const SizedBox(height: 32),
                ],
              ),
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
          onPressed: () =>
              Navigator.of(context).pushNamed(NavLinks.verificationCode),
          label: Translator.translation(context).continue_tag,
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
          Translator.translation(context).identifying_account,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          Translator.translation(context).identifying_account_message,
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
        TitleText(label: Translator.translation(context).phone_number),
        const SizedBox(height: 8),
        AppTextField(
          controller: phoneNumber,
          hint: Translator.translation(context).phone_number_hint,
        ),
      ],
    );
  }
}
