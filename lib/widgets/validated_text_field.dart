//

import 'package:flutter/material.dart';

class ValidatedTextField extends StatelessWidget {
  const ValidatedTextField({
    Key? key,
    required this.focusNode,
    required this.initialValue,
    required this.hint,
    required this.hasError,
    required this.onChange,
    this.textInputAction,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  final FocusNode focusNode;
  final String initialValue;
  final String hint;
  final bool hasError;
  final Function(String) onChange;
  final TextInputAction? textInputAction;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: hasError
              ? Theme.of(context).colorScheme.error
              : Theme.of(context).secondaryHeaderColor,
        ),
      ),
      child: TextFormField(
        initialValue: initialValue,
        focusNode: focusNode,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
          isDense: true,
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          border: InputBorder.none,
        ),
        keyboardType: keyboardType,
        onChanged: (value) => onChange(value),
        textInputAction: textInputAction,
      ),
    );
  }
}
