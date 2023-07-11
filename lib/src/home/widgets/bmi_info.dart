import 'package:flutter/material.dart';

import '../../language/localization_util.dart';

class BmiInfoWidget extends StatelessWidget {
  const BmiInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Center(
        child: Padding(
          padding: EdgeInsets.only(top: 155, left: 16, right: 16),
          child: Column(
            children: [
              _FirstText(),
              _SecondText(),
            ],
          ),
        ),
      );
}

class _FirstText extends StatelessWidget {
  const _FirstText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Text(
      l(context).bmiInfoFirst,
      key: const ValueKey<String>('BmiInfoFirst'),
      textAlign: TextAlign.center,
      style: textTheme.bodyLarge!.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.2,
        fontSize: 18
      ),
    );
  }
}

class _SecondText extends StatelessWidget {
  const _SecondText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Text(
      l(context).bmiInfoSecond,
      key: const ValueKey<String>('BmiInfoSecond'),
      textAlign: TextAlign.center,
      style: textTheme.bodyLarge!.copyWith(
        color: Colors.white38,
        fontSize: 13.5,
        fontStyle: FontStyle.italic ,
      ),
    );
  }
}
