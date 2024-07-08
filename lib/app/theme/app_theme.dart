import 'package:flutter/material.dart';

import '/app/theme/app_colors.dart';

@immutable
class AppTheme {
  static ThemeData get lightTheme => _lightTheme;
  static ThemeData get darkTheme => _darkTheme;

  //! ​‌‍‌𝗟𝗶𝗴𝗵𝘁 𝗧𝗵𝗲𝗺𝗲​
  static final _lightTheme = ThemeData.light().copyWith(
    //^ Primary Color
    primaryColor: AppColors.primaryColor,
    secondaryHeaderColor: AppColors.darkOrange,

    //^ Navigation Bar
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: AppColors.primaryColor,
      indicatorColor: AppColors.transparent,
      labelTextStyle: WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.white,
          fontSize: 13,
        ),
      ),
    ),

    //^ Bottom Navigation Bar
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(size: 30),
      selectedLabelStyle: TextStyle(color: AppColors.white, fontSize: 13),
      unselectedLabelStyle: TextStyle(color: AppColors.white),
    ),

    //^ Text Theme
    textTheme: const TextTheme(
      //& Body Large
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Aileron',
        color: AppColors.primaryColor,
      ),

      //& body Medium
      bodyMedium: TextStyle(
        color: AppColors.white,
        fontSize: 18,
        fontFamily: 'Aileron',
      ),

      //& Body small
      bodySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontFamily: 'Aileron',
        color: AppColors.black,
      ),
    ),
  );

  //! ​‌‍‌𝗗𝗮𝗿𝗸 𝗧𝗵𝗲𝗺𝗲​
  static final _darkTheme = ThemeData.dark().copyWith(
    //^ Bottom Navigation Bar
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(size: 30),
      selectedLabelStyle: TextStyle(color: AppColors.white, fontSize: 13),
      unselectedLabelStyle: TextStyle(color: AppColors.white),
    ),
  );
}
