import 'package:empire_sports/theme/app_colors.dart';
import 'package:empire_sports/theme/app_text.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getTheme() {
    return ThemeData(
        primaryColor: AppColors.primaryColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        textTheme: AppText.getTheme(),
        fontFamily: 'Montserrat');
  }
}
