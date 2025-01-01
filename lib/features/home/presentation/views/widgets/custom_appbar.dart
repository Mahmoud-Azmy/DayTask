import 'package:day_task/core/assets.dart';
import 'package:day_task/core/styles.dart';
import 'package:day_task/features/home/presentation/views/widgets/home_view_logo.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(height: 55, width: 55, child: HomeViewLogo()),
        const Spacer(),
        const Text('Schedule', style: Styles.textStyle20),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Image.asset(Assets.addIcon, height: 30),
        ),
      ],
    );
  }
}
