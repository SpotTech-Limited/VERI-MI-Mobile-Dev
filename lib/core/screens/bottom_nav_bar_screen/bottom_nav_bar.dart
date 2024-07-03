import 'package:flutter/material.dart';

import '/core/screens/bottom_nav_bar_screen/bottom_nav_bar_model.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    super.key,
    required this.onItemSelected,
  });

  final ValueChanged<int> onItemSelected;

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = -1;

  final navItems = bottomNavItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          bottomNavItems.length,
          (index) {
            final navItem = navItems[index];

            return BottomNavBarTile(
              label: navItem.label,
              imageUrl: navItem.imageUrl,
              onPressed: () {
                _selectedIndex = index;
                widget.onItemSelected(_selectedIndex);
              },
            );
          },
        ).toList(),
      ),
    );
  }
}

class BottomNavBarTile extends StatelessWidget {
  const BottomNavBarTile({
    super.key,
    required this.label,
    required this.imageUrl,
    required this.onPressed,
  });

  final String imageUrl;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: Theme.of(context)
                .bottomNavigationBarTheme
                .selectedIconTheme!
                .size,
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style:
                Theme.of(context).bottomNavigationBarTheme.selectedLabelStyle,
          ),
        ],
      ),
    );
  }
}
