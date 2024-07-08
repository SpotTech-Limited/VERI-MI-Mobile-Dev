import 'package:shared_preferences/shared_preferences.dart';

class DatabaseHelper {
  // Singleton pattern
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  SharedPreferences? _prefs;

  Future<SharedPreferences> _initPrefs() async {
    if (_prefs != null) return _prefs!;

    _prefs = await SharedPreferences.getInstance();
    return _prefs!;
  }

  Future<bool> get showOnboardingScreen async {
    final prefs = await _initPrefs();
    return prefs.getBool('show_onboarding_screen') ?? true;
  }

  Future<bool> setOnboardingSeen(bool seen) async {
    final prefs = await _initPrefs();
    return prefs.setBool('show_onboarding_screen', seen);
  }
}
