import 'package:day_task/consts.dart';
import 'package:day_task/features/splash/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DayTask());
}

class DayTask extends StatelessWidget {
  const DayTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const SplashView(),
    );
  }
}
