//

import 'dart:math';

import 'package:elcom_app/helpers/utils.dart';
import 'package:flutter/material.dart';

import '../screens/auth/login_screen/models/login_constants.dart';
import 'app_logo.dart';
import 'corner_circle.dart';

class AuthScreensBackground extends StatelessWidget {
  const AuthScreensBackground({
    super.key,
    required this.child,
    this.showBackButton = false,
    this.bottonCircle = false,
  });
  final Widget child;
  final bool showBackButton;
  final bool bottonCircle;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final statusbarHeight = MediaQuery.of(context).viewPadding.top;
    final topPadding =
        (size.height * LoginConstants.topPaddingRatio) - 50 - statusbarHeight;
    return Stack(
      fit: StackFit.expand,
      children: [
        const CornerCircle(),
        bottonCircle
            ? const CornerCircle(toBottom: true)
            : const SizedBox.shrink(),
        SingleChildScrollView(
          child: Column(
            children: [
              Utils.verticalSpace(statusbarHeight),
              SizedBox(
                height: 50,
                child: showBackButton
                    ? _backButton(context)
                    : const SizedBox.shrink(),
              ),
              SizedBox(
                height: max(topPadding, 0),
              ),
              AppLogo(height: size.height * LoginConstants.logoHeightRatio),
              SizedBox(height: size.height * LoginConstants.midPaddingRatio),
              child,
            ],
          ),
        ),
      ],
    );
  }

  Padding _backButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          )
        ],
      ),
    );
  }
}
