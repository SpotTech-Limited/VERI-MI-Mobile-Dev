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

    //^ Bottom Navigation Bar
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
  );

  // TODO: For now my main focus is to keep things dynamic and that's why I'm using themes in the first place and not to define a dark theme.

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
