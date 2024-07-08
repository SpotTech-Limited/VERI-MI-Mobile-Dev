import 'package:flutter/material.dart';

@immutable
class OnboardingModel {
  final String imageUrl;
  final String title;
  final String info;

  const OnboardingModel({
    required this.imageUrl,
    required this.title,
    required this.info,
  });
}

const onboardingScreenItems = [
  OnboardingModel(
    imageUrl: 'assets/images/onboarding/onboarding1.png',
    title: 'Empowerment',
    info:
        'Lorem ipsum dolor sit amet consectetur. Lacus facilisis duis lacinia et. Diam sit arcu ultricies ut. Interdum adipiscing consequat varius velit.',
  ),
  OnboardingModel(
    imageUrl: 'assets/images/onboarding/onboarding2.png',
    title: 'Empowerment',
    info:
        'Lorem ipsum dolor sit amet consectetur. Lacus facilisis duis lacinia et. Diam sit arcu ultricies ut. Interdum adipiscing consequat varius velit.',
  ),
  OnboardingModel(
    imageUrl: 'assets/images/onboarding/onboarding3.png',
    title: 'Empowerment',
    info:
        'Lorem ipsum dolor sit amet consectetur. Lacus facilisis duis lacinia et. Diam sit arcu ultricies ut. Interdum adipiscing consequat varius velit.',
  ),
];
