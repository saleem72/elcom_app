//
//

import 'package:elcom_app/helpers/localization/language_constants.dart';
import 'package:elcom_app/helpers/routing/nav_links.dart';
import 'package:elcom_app/screens/auth/identifying_account/identifying_account_bloc/identifying_account_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../widgets/main_widgets.dart';

class IdentifyingAccountScreen extends StatelessWidget {
  const IdentifyingAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IdentifyingAccountBloc(),
      child: BlocBuilder<IdentifyingAccountBloc, IdentifyingAccountState>(
        builder: (context, state) {
          return const IdentifyingAccountScreenContent();
        },
      ),
    );
  }
}

class IdentifyingAccountScreenContent extends StatefulWidget {
  const IdentifyingAccountScreenContent({super.key});

  @override
  State<IdentifyingAccountScreenContent> createState() =>
      _IdentifyingAccountScreenContentState();
}

class _IdentifyingAccountScreenContentState
    extends State<IdentifyingAccountScreenContent> {
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();

  final FocusNode _phoneNumberFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _phoneNumberFocusNode.addListener(() {
      if (!_phoneNumberFocusNode.hasFocus) {
        context
            .read<IdentifyingAccountBloc>()
            .add(IdentifyingAccountPhoneNumberUnfocused());
      }
    });
  }

  @override
  void dispose() {
    _phoneNumberFocusNode.dispose();
    super.dispose();
  }

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
                  const IdentifyingAccountInfo(),
                  const SizedBox(height: 16),
                  IdentifyingAccountPhoneNumber(
                      focusNode: _phoneNumberFocusNode),
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
      children: const [
        IdentifyingAccountSubmitButton(),
      ],
    );
  }
}

class IdentifyingAccountPhoneNumber extends StatelessWidget {
  const IdentifyingAccountPhoneNumber({
    Key? key,
    required this.focusNode,
  }) : super(key: key);
  final FocusNode focusNode;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IdentifyingAccountBloc, IdentifyingAccountState>(
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
            IdentifyingAccountPhoneNumberInput(
              focusNode: focusNode,
              initialValue: state.phoneNumber.value,
              hasError: state.phoneNumber.invalid,
            ),
          ],
        );
      },
    );
  }
}

class IdentifyingAccountSubmitButton extends StatelessWidget {
  const IdentifyingAccountSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IdentifyingAccountBloc, IdentifyingAccountState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return PrimaryButton(
          label: Translator.translation(context).confirm,
          onPressed: state.status.isValidated
              ? () => context
                  .read<IdentifyingAccountBloc>()
                  .add(IdentifyingAccountFormSubmitted())
              : null,
        );
      },
    );
  }
}

class IdentifyingAccountPhoneNumberInput extends StatelessWidget {
  const IdentifyingAccountPhoneNumberInput({
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
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.phone,
      onChange: (value) {
        context
            .read<IdentifyingAccountBloc>()
            .add(IdentifyingAccountPhoneNumberChanged(phoneNumber: value));
      },
    );
  }
}

class IdentifyingAccountInfo extends StatelessWidget {
  const IdentifyingAccountInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
