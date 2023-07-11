import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/app.dart';
import 'src/settings/settings.controller.dart';
import 'src/settings/settings.service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  final settingsController = SettingsController(SettingsService(prefs));

  await settingsController.loadSettings();

  runApp(
    ProviderScope(
      child: MyApp(settingsController: settingsController),
    ),
  );
}
