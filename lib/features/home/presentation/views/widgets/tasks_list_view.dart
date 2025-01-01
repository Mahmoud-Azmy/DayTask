import 'package:day_task/features/home/presentation/views/widgets/tasks_list_view_item.dart';
import 'package:flutter/material.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (index.isOdd) {
            return const SizedBox(height: 10);
          }
          return const TasksListViewItem();
        },
        childCount: 19, // For 10 items + 9 separators
      ),
    );
  }
}
