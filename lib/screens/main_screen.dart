import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/core/screens/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
import '/features/onboarding/providers/onboarding_providers.dart';
import '/features/onboarding/views/screens/onboarding_screen.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(showOnboardingProvider);

    return data.when(
      data: (showOnboarding) {
        if (showOnboarding) {
          return const OnboardingScreen();
        } else {
          return const BottomNavBarScreen();
        }
      },
      error: (error, stackTrace) {
        return Center(
          child: Text(
            error.toString(),
          ),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
