//

import 'package:elcom_app/helpers/localization/language_constants.dart';
import 'package:flutter/material.dart';

import '../../helpers/styling/styling.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 60,
              height: 60,
              child: Image.asset(Assests.noSignal),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            Translator.translation(context).no_net_message,
            style: const TextStyle(
              height: 1.6,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
