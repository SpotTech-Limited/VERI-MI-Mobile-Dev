import 'package:flutter/material.dart';

@immutable
class BottomNavBarModel {
  final String label;
  final String imageUrl;

  const BottomNavBarModel({
    required this.label,
    required this.imageUrl,
  });
}

const bottomNavItems = [
  BottomNavBarModel(label: 'Home', imageUrl: 'assets/icons/home.png'),
  BottomNavBarModel(label: 'Search', imageUrl: 'assets/icons/report.png'),
  BottomNavBarModel(label: 'Support', imageUrl: 'assets/icons/search.png'),
  BottomNavBarModel(label: 'Report', imageUrl: 'assets/icons/support.png'),
];
