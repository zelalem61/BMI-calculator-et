import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../language/localization_util.dart';
import '../../settings/settings.controller.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.settingsController, required this.title})
      : super(key: key);

  final SettingsController settingsController;
  final String title;

  void onLanguageSelected(Locale? locale) {
    if (settingsController.locale != locale) {
      settingsController.updateLocale(locale);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return AppBar(
      key: const ValueKey<String>('AppBar'),
      actions: [
        PopupMenuButton<Locale>(
          icon: SvgPicture.asset(
            LocalizationUtil.getAssetName(settingsController.locale),
          ),
          tooltip: l(context).changeLanguage,
          onSelected: onLanguageSelected,
          itemBuilder: (context) => <PopupMenuEntry<Locale>>[
            PopupMenuItem<Locale>(
              value: localeEnglish,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(assetEnglish, height: 20, width: 20),
                      const SizedBox(width: 8),
                      Text(
                        l(context).english,
                        style: textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  if (settingsController.locale == localeEnglish)
                    Icon(Icons.check, color: theme.primaryColor),
                ],
              ),
            ),
            
            PopupMenuItem<Locale>(
              value: localeAmharic,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(assetAmharic, height: 20, width: 20),
                      const SizedBox(width: 8),
                      Text(
                        l(context).amharic,
                        style: textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  if (settingsController.locale == localeAmharic)
                    Icon(Icons.check, color: theme.primaryColor),
                ],
              ),
            ),
            PopupMenuItem<Locale>(
              value: localAfanOromo,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(assetAmharic, height: 20, width: 20),
                      const SizedBox(width: 8),
                      Text(
                        l(context).afanOromo,
                        style: textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  if (settingsController.locale == localAfanOromo)
                    Icon(Icons.check, color: theme.primaryColor),
                ],
              ),
            ),
            PopupMenuItem<Locale>(
              value: localTigrigna,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(assetTigrigna, height: 20, width: 20),
                      const SizedBox(width: 8),
                      Text(
                        l(context).tgrigna,
                        style: textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  if (settingsController.locale == localTigrigna)
                    Icon(Icons.check, color: theme.primaryColor),
                ],
              ),
            ),
          ],
        ),
        

        
      ],
      backgroundColor: Color.fromRGBO(33, 51, 99,1),
      title: Text(title, style: appBarTextStyle),
    );
  }
}
