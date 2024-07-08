import '/features/onboarding/data/source/local/database_helper.dart';

class OnboardingRepository {
  Future<bool> get showOnboardingScreen async {
    final DatabaseHelper helper = DatabaseHelper();
    return helper.showOnboardingScreen;
  }

  Future<bool> setOnboardingScreen(bool seen) async {
    final DatabaseHelper helper = DatabaseHelper();
    return helper.setOnboardingSeen(seen);
  }
}
