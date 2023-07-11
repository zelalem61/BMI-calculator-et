import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../constants.dart';

class Bmi {
  Bmi({required this.height, required this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  final int height;
  final int weight;
  late double _bmi;

  double get bmi => _bmi;

  String get bmiAsString => bmi.toStringAsFixed(2);

  String get wholeNumber {
    final indexOfDecimalPoint = bmiAsString.indexOf('.');

    return bmiAsString.substring(0, indexOfDecimalPoint);
  }

  String get decimalPart {
    final indexOfDecimalPoint = bmiAsString.indexOf('.');

    return bmiAsString.substring(indexOfDecimalPoint, indexOfDecimalPoint + 2);
  }

  String getInterpretationText(BuildContext context) {
    if (bmi >= 25) {
      return AppLocalizations.of(context)!.bmiInterpretationOverweight;
    } else if (bmi >= 18.5) {
      return AppLocalizations.of(context)!.bmiInterpretationNormal;
    }

    return AppLocalizations.of(context)!.bmiInterpretationUnderweight;
  }

  Color get interpretationColor {
    if (bmi >= 25) {
      return Colors.red;
    } else if (bmi > 18.5) {
      return normalBmiColor;
    }

    return Colors.orange;
  }

  @override
  String toString() => 'Bmi{height: $height, weight: $weight, bmi: $bmi, '
      'bmiAsString: $bmiAsString, wholeNumber: $wholeNumber, '
      'decimalPart: $decimalPart}';
}
