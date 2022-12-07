//

import 'package:elcom_app/helpers/app_theme/app_theme.dart';
import 'package:elcom_app/helpers/app_theme/app_theme_cubit/app_theme_cubit.dart';
import 'package:elcom_app/helpers/auth_manager/auth_cubit/auth_cubit.dart';
import 'package:elcom_app/helpers/localization/locale_cubit/locale_cubit.dart';
import 'package:elcom_app/helpers/network_manager/network_manager_cubit.dart';
import 'package:elcom_app/helpers/routing/app_router.dart';
import 'package:elcom_app/helpers/routing/nav_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'dependancy_injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocaleCubit(safe: di.locator()),
        ),
        BlocProvider(
          create: (context) => AppThemeCubit(safe: di.locator()),
        ),
        BlocProvider(
          create: (context) => NetworkManagerCubit()..startMonitoring(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(safe: di.locator()),
        ),
      ],
      child: const ElcomApp(),
    );
  }
}

class ElcomApp extends StatelessWidget {
  const ElcomApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: context.select((AppThemeCubit cubit) => cubit.state.themeMode),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale(
          'ar', ''), // context.select((LocaleCubit cubit) => cubit.state),
      onGenerateRoute: AppRouter.generate,
      initialRoute: NavLinks.initial,
    );
  }
}
