import 'package:day_task/core/assets.dart';
import 'package:day_task/features/splash/widgets/splash_view_logo.dart';
import 'package:day_task/features/splash/widgets/splash_view_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const SplashViewLogo(),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              child: Image.asset(Assets.splashImage),
            ),
            const SplashViewText(),
          ],
        ),
      ),
    );
  }
}
