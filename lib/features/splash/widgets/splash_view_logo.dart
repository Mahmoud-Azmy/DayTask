import 'package:day_task/consts.dart';
import 'package:day_task/core/assets.dart';
import 'package:day_task/core/styles.dart';
import 'package:flutter/material.dart';

class SplashViewLogo extends StatelessWidget {
  const SplashViewLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Assets.splashLogo,
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Day',
                  style: Styles.textStyle22,
                ),
                Text(
                  'Task',
                  style: Styles.textStyle22.copyWith(color: kSeconedColor),
                ),
              ],
            ),
          ],
        ),
        const Spacer()
      ],
    );
  }
}