import 'package:day_task/core/styles.dart';
import 'package:day_task/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:day_task/features/home/presentation/views/widgets/days_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppbar(),
          SizedBox(
            height: 30,
          ),
          Text(
            'November',
            style: Styles.textStyle20,
          ),
          SizedBox(
            height: 20,
          ),
          DaysListView()
        ],
      ),
    );
  }
}
