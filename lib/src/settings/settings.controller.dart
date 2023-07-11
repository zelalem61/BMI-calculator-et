import 'package:flutter/material.dart' show ChangeNotifier, Locale;
import 'settings.service.dart';


class SettingsController with ChangeNotifier {
  SettingsController(this._settingsService);

  final SettingsService _settingsService;

  late Locale _locale;

  Locale get locale => _locale;


  Future<void> loadSettings() async {
    _locale = await _settingsService.locale();

    notifyListeners();
  }
  Future<void> updateLocale(Locale? newLocale) async {
    if (newLocale == null) {
      return;
    }

    if (newLocale == _locale) {
      return;
    }

    _locale = newLocale;

    notifyListeners();

    await _settingsService.updateLocale(newLocale);
  }
}
