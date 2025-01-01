import 'package:day_task/consts.dart';
import 'package:day_task/core/assets.dart';
import 'package:day_task/core/styles.dart';
import 'package:flutter/material.dart';

class HomeViewLogo extends StatelessWidget {
  const HomeViewLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Assets.splashLogo,
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Day',
                  style: Styles.textStyle12,
                ),
                Text(
                  'Task',
                  style: Styles.textStyle12.copyWith(color: kSeconedColor),
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
