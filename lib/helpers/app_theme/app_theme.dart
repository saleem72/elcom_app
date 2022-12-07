//

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  AppTheme._();
  static const Color lightNavigationBarColor = Color(0xFFEDEAEA);
  static const Color lightTextColor = Colors.white;
  static const Color lightSecondaryTextColor = Color(0xb3ffffff);
  static const Color darkTextColor = Color(0xdd000000);
  static const Color darkSecondaryTextColor = Color(0x8a000000);
  // static const Color borders = Color(0xFF7E7E7E);
  static const Color primary = Color(0xff232c63);
  // static const Color

  static const String fontFamily = 'Almarai';

  static const TextTheme lightPrimaryTextTheme = TextTheme(
    bodyLarge: TextStyle(
      color: lightTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      inherit: true,
      letterSpacing: 0.5,
      textBaseline: TextBaseline.alphabetic,
    ),
    bodyMedium: TextStyle(
      color: lightTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      inherit: true,
      letterSpacing: 0.25,
      textBaseline: TextBaseline.alphabetic,
    ),
    bodySmall: TextStyle(
      color: lightSecondaryTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      inherit: true,
      letterSpacing: 0.4,
      textBaseline: TextBaseline.alphabetic,
    ),
    displayLarge: TextStyle(
      color: lightSecondaryTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w300,
      fontSize: 96,
      inherit: true,
      letterSpacing: -1.5,
      textBaseline: TextBaseline.alphabetic,
    ),
    displayMedium: TextStyle(
      color: lightSecondaryTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w300,
      fontSize: 60,
      inherit: true,
      letterSpacing: -0.5,
      textBaseline: TextBaseline.alphabetic,
    ),
    displaySmall: TextStyle(
      color: lightSecondaryTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 48,
      inherit: true,
      letterSpacing: 0,
      textBaseline: TextBaseline.alphabetic,
    ),
    headlineLarge: TextStyle(
      color: lightSecondaryTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 40,
      inherit: true,
      letterSpacing: 0.25,
      textBaseline: TextBaseline.alphabetic,
    ),
    headlineMedium: TextStyle(
      color: lightSecondaryTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 34,
      inherit: true,
      letterSpacing: 0.25,
      textBaseline: TextBaseline.alphabetic,
    ),
    headlineSmall: TextStyle(
      color: lightTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 24,
      inherit: true,
      letterSpacing: 0,
      textBaseline: TextBaseline.alphabetic,
    ),
    labelLarge: TextStyle(
      color: lightTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      inherit: true,
      letterSpacing: 1.25,
      textBaseline: TextBaseline.alphabetic,
    ),
    labelMedium: TextStyle(
      color: lightTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 11,
      inherit: true,
      letterSpacing: 1.5,
      textBaseline: TextBaseline.alphabetic,
    ),
    labelSmall: TextStyle(
      color: lightTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 10,
      inherit: true,
      letterSpacing: 1.5,
      textBaseline: TextBaseline.alphabetic,
    ),
    titleLarge: TextStyle(
      color: lightTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 20,
      inherit: true,
      letterSpacing: 0.15,
      textBaseline: TextBaseline.alphabetic,
    ),
    titleMedium: TextStyle(
      color: lightTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      inherit: true,
      letterSpacing: 0.15,
      textBaseline: TextBaseline.alphabetic,
    ),
    titleSmall: TextStyle(
      color: lightTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      inherit: true,
      letterSpacing: 0.1,
      textBaseline: TextBaseline.alphabetic,
    ),
  );
  static const TextTheme lightTextTheme = TextTheme(
    bodyLarge: TextStyle(
      color: darkTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      inherit: true,
      letterSpacing: 0.5,
      textBaseline: TextBaseline.alphabetic,
    ),
    bodyMedium: TextStyle(
      color: darkTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      inherit: true,
      letterSpacing: 0.25,
      textBaseline: TextBaseline.alphabetic,
    ),
    bodySmall: TextStyle(
      color: darkSecondaryTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      inherit: true,
      letterSpacing: 0.4,
      textBaseline: TextBaseline.alphabetic,
    ),
    displayLarge: TextStyle(
      color: darkSecondaryTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w300,
      fontSize: 96,
      inherit: true,
      letterSpacing: -1.5,
      textBaseline: TextBaseline.alphabetic,
    ),
    displayMedium: TextStyle(
      color: darkSecondaryTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w300,
      fontSize: 60,
      inherit: true,
      letterSpacing: -0.5,
      textBaseline: TextBaseline.alphabetic,
    ),
    displaySmall: TextStyle(
      color: darkSecondaryTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 40,
      inherit: true,
      letterSpacing: 0,
      textBaseline: TextBaseline.alphabetic,
    ),
    headlineLarge: TextStyle(
      color: darkSecondaryTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 40,
      inherit: true,
      letterSpacing: 0.25,
      textBaseline: TextBaseline.alphabetic,
    ),
    headlineMedium: TextStyle(
      color: darkSecondaryTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 34,
      inherit: true,
      letterSpacing: 0.25,
      textBaseline: TextBaseline.alphabetic,
    ),
    headlineSmall: TextStyle(
      color: darkTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 24,
      inherit: true,
      letterSpacing: 0,
      textBaseline: TextBaseline.alphabetic,
    ),
    labelLarge: TextStyle(
      color: darkTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      inherit: true,
      letterSpacing: 1.25,
      textBaseline: TextBaseline.alphabetic,
    ),
    labelMedium: TextStyle(
      color: darkTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 11,
      inherit: true,
      letterSpacing: 1.5,
      textBaseline: TextBaseline.alphabetic,
    ),
    labelSmall: TextStyle(
      color: darkTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 10,
      inherit: true,
      letterSpacing: 1.5,
      textBaseline: TextBaseline.alphabetic,
    ),
    titleLarge: TextStyle(
      color: darkTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 20,
      inherit: true,
      letterSpacing: 0.15,
      textBaseline: TextBaseline.alphabetic,
    ),
    titleMedium: TextStyle(
      color: darkTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      inherit: true,
      letterSpacing: 0.15,
      textBaseline: TextBaseline.alphabetic,
    ),
    titleSmall: TextStyle(
      color: darkTextColor,
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      inherit: true,
      letterSpacing: 0.1,
      textBaseline: TextBaseline.alphabetic,
    ),
  );
  static Typography lightTypography = Typography(
    black: const TextTheme(
      bodyLarge: TextStyle(
          color: darkTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      bodyMedium: TextStyle(
          color: darkTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      bodySmall: TextStyle(
          color: darkSecondaryTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      displayLarge: TextStyle(
          color: darkSecondaryTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      displayMedium: TextStyle(
          color: darkSecondaryTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      displaySmall: TextStyle(
          color: darkSecondaryTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      headlineLarge: TextStyle(
          color: darkSecondaryTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      headlineMedium: TextStyle(
          color: darkSecondaryTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      headlineSmall: TextStyle(
          color: darkTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      labelLarge: TextStyle(
          color: darkTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      labelMedium: TextStyle(
          color: darkTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      labelSmall: TextStyle(
          color: darkTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      titleLarge: TextStyle(
          color: darkTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      titleMedium: TextStyle(
          color: darkTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
      titleSmall: TextStyle(
          color: darkTextColor,
          decoration: TextDecoration.none,
          fontFamily: fontFamily,
          inherit: true),
    ),
    dense: const TextTheme(
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 13,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      displayLarge: TextStyle(
        fontWeight: FontWeight.w100,
        fontSize: 112,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 56,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 45,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 40,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 34,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 24,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 11,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 21,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 17,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        inherit: false,
        textBaseline: TextBaseline.ideographic,
      ),
    ),
    englishLike: const TextTheme(
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      displayLarge: TextStyle(
        fontWeight: FontWeight.w100,
        fontSize: 112,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 56,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 45,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 40,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 34,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 24,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 10,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        inherit: false,
        textBaseline: TextBaseline.alphabetic,
      ),
    ),
    /*
      "tall": {
        "bodyLarge": {
          "fontWeight": "w700",
          "fontSize": 15,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "bodyMedium": {
          "fontWeight": "w400",
          "fontSize": 15,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "bodySmall": {
          "fontWeight": "w400",
          "fontSize": 13,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "displayLarge": {
          "fontWeight": "w400",
          "fontSize": 112,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "displayMedium": {
          "fontWeight": "w400",
          "fontSize": 56,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "displaySmall": {
          "fontWeight": "w400",
          "fontSize": 45,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "headlineLarge": {
          "fontWeight": "w400",
          "fontSize": 40,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "headlineMedium": {
          "fontWeight": "w400",
          "fontSize": 34,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "headlineSmall": {
          "fontWeight": "w400",
          "fontSize": 24,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "labelLarge": {
          "fontWeight": "w700",
          "fontSize": 15,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "labelMedium": {
          "fontWeight": "w400",
          "fontSize": 12,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "labelSmall": {
          "fontWeight": "w400",
          "fontSize": 11,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "titleLarge": {
          "fontWeight": "w700",
          "fontSize": 21,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "titleMedium": {
          "fontWeight": "w400",
          "fontSize": 17,
          "inherit": false,
          "textBaseline": "alphabetic"
        },
        "titleSmall": {
          "fontWeight": "w500",
          "fontSize": 15,
          "inherit": false,
          "textBaseline": "alphabetic"
        }
      },
      "white": {
        "bodyLarge": {
          "color": "#ffffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "bodyMedium": {
          "color": "#ffffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "bodySmall": {
          "color": "#b3ffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "displayLarge": {
          "color": "#b3ffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "displayMedium": {
          "color": "#b3ffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "displaySmall": {
          "color": "#b3ffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "headlineLarge": {
          "color": "#b3ffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "headlineMedium": {
          "color": "#b3ffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "headlineSmall": {
          "color": "#ffffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "labelLarge": {
          "color": "#ffffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "labelMedium": {
          "color": "#ffffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "labelSmall": {
          "color": "#ffffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "titleLarge": {
          "color": "#ffffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "titleMedium": {
          "color": "#ffffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        },
        "titleSmall": {
          "color": "#ffffffff",
          "decoration": "none",
          "fontFamily": ".AppleSystemUIFont",
          "inherit": true
        }
      }
    */
  );

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    // primarySwatch: lightPrimary.toMaterialColor(),
    visualDensity: VisualDensity.compact,
    fontFamily: 'Almarai',
    colorScheme: const ColorScheme(
      background: Color(0xfffffbff),
      brightness: Brightness.light,
      error: Color(0xffda245a),
      errorContainer: Color(0xffffd9dd),
      inversePrimary: Color(0xffbbc3ff),
      inverseSurface: Color(0xff303034),
      onBackground: Color(0xff1b1b1f),
      onError: Color(0xffffffff),
      onErrorContainer: Color(0xff400013),
      onInverseSurface: Color(0xfff3f0f4),
      onPrimary: Color(0xffffffff),
      onPrimaryContainer: Color(0xff000e5e),
      onSecondary: Color(0xffffffff),
      onSecondaryContainer: Color(0xff181a2c),
      onSurface: Color(0xff1b1b1f),
      onSurfaceVariant: Color(0xff46464f),
      onTertiary: Color(0xffffffff),
      onTertiaryContainer: Color(0xff2d1227),
      outline: Color(0xff767680),
      primary: Color(0xff232c63),
      primaryContainer: Color(0xffdee0ff),
      secondary: Color(0xffE8E8E8),
      secondaryContainer: Color(0xffe0e1f9),
      shadow: Color(0xff000000),
      surface: Color(0xfffffbff),
      surfaceTint: Color(0xff4a58a9),
      surfaceVariant: Color(0xffe3e1ec),
      tertiary: Color(0xff77536d),
      tertiaryContainer: Color(0xffffd7f1),
    ),
    scaffoldBackgroundColor: const Color(0xfffffbff),
    secondaryHeaderColor: const Color(0xffE8E8E8),
    selectedRowColor: const Color(0xfff5f5f5),
    shadowColor: const Color(0xff000000),
    splashColor: const Color(0x66c8c8c8),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    visualDensity: VisualDensity.compact,
    fontFamily: 'Almarai',
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      background: Color(0xff1a1c1e),
      error: Color(0xffffb4ab),
      errorContainer: Color(0xff93000a),
      inversePrimary: Color(0xff0061a4),
      inverseSurface: Color(0xffe2e2e6),
      onBackground: Color(0xffe2e2e6),
      onError: Color(0xff690005),
      onErrorContainer: Color(0xffffb4ab),
      onInverseSurface: Color(0xff2f3033),
      onPrimary: Color(0xff003258),
      onPrimaryContainer: Color(0xffd1e4ff),
      onSecondary: Color(0xff253140),
      onSecondaryContainer: Color(0xffd7e3f7),
      onSurface: Color(0xffe2e2e6),
      onSurfaceVariant: Color(0xffc3c7cf),
      onTertiary: Color(0xff3b2948),
      onTertiaryContainer: Color(0xfff2daff),
      outline: Color(0xff8d9199),
      primary: Color(0xff9ecaff),
      primaryContainer: Color(0xff00497d),
      secondary: Color(0xffbbc7db),
      secondaryContainer: Color(0xff3b4858),
      shadow: Color(0xff000000),
      surface: Color(0xff1a1c1e),
      surfaceTint: Color(0xff9ecaff),
      surfaceVariant: Color(0xff43474e),
      tertiary: Color(0xffd6bee4),
      tertiaryContainer: Color(0xff523f5f),
    ),
    scaffoldBackgroundColor: const Color(0xff1a1c1e),
    secondaryHeaderColor: const Color(0xff616161),
    selectedRowColor: const Color(0xfff5f5f5),
    shadowColor: const Color(0xff000000),
  );

  static Brightness getSystemBrightness() =>
      SchedulerBinding.instance.window.platformBrightness;

  static void setStatusBarAndNavigationBarColor(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarIconBrightness:
          themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: themeMode == ThemeMode.light
          ? lightTheme.secondaryHeaderColor
          : darkTheme.secondaryHeaderColor,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }
}

extension _Material on Color {
  Map<int, Color> _toSwatch() => {
        50: withOpacity(0.1),
        100: withOpacity(0.2),
        200: withOpacity(0.3),
        300: withOpacity(0.4),
        400: withOpacity(0.5),
        500: withOpacity(0.6),
        600: withOpacity(0.7),
        700: withOpacity(0.8),
        800: withOpacity(0.9),
        900: this,
      };

  MaterialColor toMaterialColor() => MaterialColor(
        value,
        _toSwatch(),
      );

  MaterialAccentColor toMaterialAccentColor() => MaterialAccentColor(
        value,
        _toSwatch(),
      );
}
