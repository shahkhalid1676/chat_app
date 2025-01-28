import 'package:chatapp/domain/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldlight,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style:
          ElevatedButton.styleFrom(backgroundColor: AppColors.buttonLightMode),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(
        color: AppColors.textLight,
      ),
      bodyLarge: TextStyle(color: AppColors.textLight),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldDark,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.buttonDarkMode)),
    textTheme: TextTheme(
      bodySmall: TextStyle(
        color: AppColors.textDark,
      ),
      bodyLarge: TextStyle(color: AppColors.textDark),
    ),
  );
}


