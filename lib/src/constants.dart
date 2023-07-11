import 'package:flutter/material.dart';

const assetBmiChartImage = 'assets/images/bmi-chart.png';
const assetEnglish = 'assets/icons/en.svg';
const assetAmharic = 'assets/icons/tr.svg';
const assetTigrigna = 'assets/icons/tr.svg';

const localeEnglish = Locale('en');
const localeAmharic = Locale('am');
const localTigrigna = Locale('tr');
const localAfanOromo = Locale('or');

final localeAssets = <Locale, String>{
  localeEnglish: assetEnglish,
  localeAmharic: assetAmharic,
  localTigrigna: assetTigrigna,
  localAfanOromo: assetAmharic
};

const primaryColor =Color.fromRGBO(33, 51, 99,1);
const normalBmiColor = Color(0xFF66BB6A);
const activeButtonBgColor = Colors.white;
const activeButtonTextColor = Color.fromRGBO(33, 51, 99, 1);
final inactiveButtonBgColor = const Color(0xFFF6CFD5).withOpacity(.5);
final inactiveButtonTextColor = Colors.white.withOpacity(.7);
const containerGradientColors = <Color>[Color.fromRGBO(33, 51, 99, 1), Color.fromRGBO(33, 51, 99, 1)];

final actionButtonDecoration = BoxDecoration(
  shape: BoxShape.circle,
  boxShadow: [
    BoxShadow(
      color: primaryColor.withOpacity(.4),
      blurRadius: 6,
      offset: const Offset(0, 2),
    ),
  ],
);

const mainContainerDecoration = BoxDecoration(
  boxShadow: [
    BoxShadow(blurRadius: .5, color: primaryColor),
  ],
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: containerGradientColors,
  ),
);

// Text Styles
const appBarTextStyle = TextStyle(
  color: Color.fromARGB(255, 245, 242, 243),
  fontSize: 22,
  fontWeight: FontWeight.w900,
);
