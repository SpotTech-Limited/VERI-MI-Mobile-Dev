import 'package:flutter/material.dart';

import '/core/components/buttons/custom_text_button.dart';
import '/core/components/buttons/round_button.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({
    super.key,
    required this.isLastPage,
    required this.goToNextPage,
    required this.finishOnboarding,
    required this.skipToLastPage,
  });

  final bool isLastPage;
  final VoidCallback goToNextPage;
  final VoidCallback finishOnboarding;
  final VoidCallback skipToLastPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundButton(
          onPressed: isLastPage ? finishOnboarding : goToNextPage,
          label: isLastPage ? 'Get Started' : 'Next',
        ),
        const SizedBox(height: 20),
        if (!isLastPage)
          CustomTextButton(
            onPressed: skipToLastPage,
            label: 'Skip',
          ),
      ],
    );
  }
}
