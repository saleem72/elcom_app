//

import 'package:elcom_app/widgets/main_widgets.dart';
import 'package:flutter/material.dart';

class ValidationMessage extends StatelessWidget {
  const ValidationMessage({
    Key? key,
    required this.isInValid,
    required this.validationMessage,
  }) : super(key: key);
  final bool isInValid;
  final String validationMessage;
  @override
  Widget build(BuildContext context) {
    return isInValid
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 8),
              FailureText(message: validationMessage),
            ],
          )
        : const SizedBox.shrink();
  }
}
