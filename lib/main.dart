import 'package:flutter/material.dart';

import '/app/theme/app_theme.dart';
import '/core/screens/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const BottomNavBarScreen(),
    );
  }
}
