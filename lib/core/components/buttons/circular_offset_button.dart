import 'package:flutter/material.dart';

import '/app/theme/app_colors.dart';

class CircularOffsetButton extends StatelessWidget {
  const CircularOffsetButton({
    super.key,
    required this.backgroundColor,
    required this.onPressed,
    this.child,
    this.imageUrl,
    this.icon,
  });

  final Color backgroundColor;
  final VoidCallback onPressed;
  final Widget? child;
  final String? imageUrl;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.transparent,
          border: Border.all(
            color: AppColors.darkOrange,
            width: 2,
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor,
              image: (imageUrl != null && icon == null)
                  ? DecorationImage(image: AssetImage(imageUrl!))
                  : null,
            ),
            child: child,
          ),
        ),
      ),
    );

    // GestureDetector(
    //   onTap: onPressed,
    //   child: CircleAvatar(
    //     backgroundColor: Theme.of(context).secondaryHeaderColor,
    //     radius: 28,
    //     child: CircleAvatar(
    //       radius: 26,
    //       backgroundColor: AppColors.transparent,
    //       child: CircleAvatar(
    //         radius: 22,
    //         backgroundColor: backgroundColor,
    //         child: child,
    //       ),
    //     ),
    //   ),
    // );
  }
}
