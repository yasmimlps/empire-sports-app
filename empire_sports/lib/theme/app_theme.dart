import 'package:empire_sports/theme/app_colors.dart';
import 'package:empire_sports/theme/app_text.dart';
import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    brightness: Brightness.light,
    textTheme: AppText.getTheme(),
    fontFamily: 'Montserrat');
