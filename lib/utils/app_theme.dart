import 'package:app_resource_management/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.greyBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.greyBackgroundColor,
    ),
  );
}
