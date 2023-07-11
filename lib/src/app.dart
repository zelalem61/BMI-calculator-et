import 'package:bmi_calculator/src/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


import 'screens/exerciseScreen.dart';
import 'screens/exercisesType.dart';
import 'screens/foodScreen.dart';
import 'screens/home_screen.dart';
import 'screens/launch_screen.dart';
import 'settings/settings.controller.dart';
import 'theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.settingsController}) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: settingsController,
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: settingsController.locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          onGenerateTitle: (context) => AppLocalizations.of(context)!.title,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: lightTheme(context),
          initialRoute: '/splash',
          routes: {
            '/splash': (context) => const SplashScreen(),
            '/home' :(context) => LaunchScreen(settingsController: settingsController),
            '/food':(context) =>  FoodScreen(title: 'Recommended Foods',),
            '/exercise':(context) => ExerciseScreen(),
            '/exerciseType': (context) => ExerciseTypeScreen(),
            '/bmi' :(context) => BMIScreen(settingsController: settingsController)
          },
        ),
      );
}
