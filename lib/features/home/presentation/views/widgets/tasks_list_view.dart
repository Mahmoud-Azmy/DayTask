import 'package:day_task/features/home/presentation/manager/get_tasks_cubit/get_tasks_cubit.dart';
import 'package:day_task/features/home/presentation/views/widgets/tasks_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetTasksCubit, GetTasksState>(
      builder: (context, state) {
        if (state is GetTaskSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index.isOdd) {
                  return const SizedBox(height: 10);
                }
                return TasksListViewItem(
                  taskModel: state.tasks[index],
                );
              },
              childCount: state.tasks.length, // For 10 items + 9 separators
            ),
          );
        } else if (state is GetTaskFailure) {
          return const Center(
            child: Text('Failed to fetch tasks'),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
