//

import 'package:elcom_app/helpers/auth_manager/auth_cubit/auth_cubit.dart';
import 'package:elcom_app/helpers/localization/language_constants.dart';
import 'package:elcom_app/helpers/routing/nav_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import '../../../widgets/main_widgets.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();
  String _code = '';
  bool _onEditing = true;
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
              _inputs1(context),
              const SizedBox(height: 8),
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
          onPressed: () =>
              Navigator.of(context).pushNamed(NavLinks.resetPassword),
          label: Translator.translation(context).confirm,
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(height: 16),
        AppBigButton(
          onPressed: () {},
          label: Translator.translation(context).change_phone_number,
          foregroundColor: Colors.black,
          backgroundColor: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }

  Column _informSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          Translator.translation(context).verification_tag,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: Translator.translation(context).verification_message_p1,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      height: 1.3,
                    ),
              ),
              WidgetSpan(
                child: Text(
                  ' +963 9** *** *72',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        height: 1.3,
                      ),
                  textDirection: TextDirection.ltr,
                ),
              ),
              TextSpan(
                text: Translator.translation(context).verification_message_p2,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      height: 1.3,
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _inputs1(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: VerificationCode(
        textStyle: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
        keyboardType: TextInputType.number,
        underlineColor: Colors
            .amber, // If this is null it will use primaryColor: Colors.red from Theme
        length: 4,
        cursorColor:
            Colors.blue, // If this is null it will default to the ambient
        // clearAll is NOT required, you can delete it
        // takes any widget, so you can implement your design
        margin: const EdgeInsets.all(12),
        onCompleted: (String value) {
          print('onCompleted $value');
          setState(() {
            _code = value;
          });
        },
        onEditing: (bool value) {
          print('onEditing $value');
          setState(() {
            _onEditing = value;
          });
          if (!_onEditing) FocusScope.of(context).nextFocus();
        },
      ),
    );
  }

  Widget _inputs(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    print('move');
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onChanged: (value) {
                  if (value.length > 1) {
                    print(value);
                  }
                  if (value.length == 1) {
                    print('move');
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    print('move');
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    print('move');
                    FocusScope.of(context).nextFocus();
                  }
                },
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
