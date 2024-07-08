import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:veri_mi_mobile/core/screens/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';

import '/core/constants/paddings.dart';
import '/features/onboarding/constants/configs/onboarding_screen_config.dart';
import '/features/onboarding/data/models/onboarding_model.dart';
import '/features/onboarding/providers/onboarding_providers.dart';
import '/features/onboarding/views/views/navigation_buttons.dart';
import '/features/onboarding/views/views/onboarding_view.dart';
import '/features/onboarding/views/widgets/page_indicator.dart';
import '../../../../screens/main_screen.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _allItems = onboardingScreenItems;
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  void _goToNextPage() {
    if (_currentPageIndex < _allItems.length - 1) {
      _pageController.animateToPage(
        _currentPageIndex + 1,
        duration: OnboardingScreenConfig.duration,
        curve: OnboardingScreenConfig.curve,
      );
    }
  }

  void _skipToLastPage() {
    _pageController.animateToPage(
      _allItems.length - 1,
      duration: OnboardingScreenConfig.duration,
      curve: OnboardingScreenConfig.curve,
    );
  }

  Future _finishOnboarding() async {
    //! Set onboarding screen
    ref.read(onboardingRepositoryProvider).setOnboardingScreen(false).then((_) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const BottomNavBarScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLastPage = _currentPageIndex == _allItems.length - 1;
    return Scaffold(
      body: Padding(
        padding: Paddings.largerPadding,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    _currentPageIndex = value;
                  });
                },
                controller: _pageController,
                children: _allItems
                    .map(
                      (item) => OnboardingView(
                        imageUrl: item.imageUrl,
                        pageTitle: item.title,
                        pageInfo: item.info,
                      ),
                    )
                    .toList(),
              ),
            ),
            NavigationButtons(
              isLastPage: isLastPage,
              goToNextPage: _goToNextPage,
              finishOnboarding: _finishOnboarding,
              skipToLastPage: _skipToLastPage,
            ),
            const SizedBox(height: 50),
            PageIndicator(
              pageController: _pageController,
              itemCount: _allItems.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
