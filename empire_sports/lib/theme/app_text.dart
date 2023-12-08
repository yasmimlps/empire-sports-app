import 'package:empire_sports/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppText {
  static const TextStyle displayLarge = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle displayMedium = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle headlineMedium = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle headlineSmall = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle numberLarge = TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle numberMedium = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle titleSmall = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle bodySmall = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle labelLarge = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle labelMedium = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle labelSmall = TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle shadow = TextStyle(
    shadows: [
      BoxShadow(
        color: AppColors.black,
        blurRadius: 3,
        offset: Offset(1, 2),
      )
    ],
  );

  static TextTheme getTheme() {
    return const TextTheme(
      displayLarge: displayLarge,
      displayMedium: displayMedium,
      headlineLarge: headlineLarge,
      headlineMedium: headlineMedium,
      headlineSmall: headlineSmall,
      titleLarge: numberLarge,
      titleMedium: numberMedium,
      titleSmall: titleSmall,
      bodyLarge: bodyLarge,
      bodyMedium: bodyMedium,
      bodySmall: bodySmall,
      labelLarge: labelLarge,
      labelMedium: labelMedium,
      labelSmall: labelSmall,
    );
  }
}
