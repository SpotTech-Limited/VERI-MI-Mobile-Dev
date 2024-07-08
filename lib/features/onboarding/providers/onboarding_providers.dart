import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/features/onboarding/data/repositories/onboarding_repository.dart';

final onboardingRepositoryProvider = Provider((ref) {
  return OnboardingRepository();
});

final showOnboardingProvider = FutureProvider((ref) {
  final repositoryProvider = ref.watch(onboardingRepositoryProvider);
  return repositoryProvider.showOnboardingScreen;
});
