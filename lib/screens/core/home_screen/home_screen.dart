//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../helpers/app_theme/app_theme_cubit/app_theme_cubit.dart';
import '../../../helpers/localization/language.dart';
import '../../../helpers/localization/language_constants.dart';
import '../../../helpers/localization/locale_cubit/locale_cubit.dart';
import '../../../widgets/main_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppNavBar(title: Translator.translation(context).home),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GradientButton(
                onPressed: () {
                  context
                      .read<LocaleCubit>()
                      .setLocal(context, Language.arabic.languageCode);
                },
                label: 'Arabic',
              ),
              GradientButton(
                onPressed: () {
                  context
                      .read<LocaleCubit>()
                      .setLocal(context, Language.english.languageCode);
                },
                label: 'English',
              ),
            ],
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GradientButton(
                onPressed: () {
                  context.read<AppThemeCubit>().setTheme(ThemeMode.dark);
                },
                label: 'Dark',
              ),
              GradientButton(
                onPressed: () {
                  context.read<AppThemeCubit>().setTheme(ThemeMode.light);
                },
                label: 'Light',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
