import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '/app/theme/app_colors.dart';
import '/features/onboarding/constants/configs/onboarding_screen_config.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.pageController,
    required this.itemCount,
    required this.onPageChanged,
  });

  final PageController pageController;
  final int itemCount;
  final ValueChanged<int> onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      effect: const WormEffect(
        activeDotColor: AppColors.primaryColor,
        type: WormType.underground,
        dotHeight: 20,
        dotWidth: 20,
        spacing: 20,
      ),
      controller: pageController,
      count: itemCount,
      onDotClicked: (index) {
        pageController.animateToPage(
          index,
          duration: OnboardingScreenConfig.duration,
          curve: OnboardingScreenConfig.curve,
        );
        onPageChanged(index);
      },
    );
  }
}
