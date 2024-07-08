import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    super.key,
    required this.imageUrl,
    required this.pageTitle,
    required this.pageInfo,
  });

  final String imageUrl;
  final String pageTitle;
  final String pageInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          imageUrl,
        ),

        // Title
        Text(
          pageTitle,
          style: Theme.of(context).textTheme.bodyLarge,
        ),

        // Info
        Text(
          pageInfo,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
