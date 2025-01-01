import 'package:day_task/core/styles.dart';
import 'package:day_task/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:day_task/features/home/presentation/views/widgets/days_list_view.dart';
import 'package:day_task/features/home/presentation/views/widgets/tasks_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          const CustomAppbar(),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'November',
            style: Styles.textStyle20,
          ),
          const SizedBox(
            height: 20,
          ),
          const DaysListView(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Today’s Tasks',
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 20,
          ),
          const TasksListViewItem()
        ],
      ),
    );
  }
}
