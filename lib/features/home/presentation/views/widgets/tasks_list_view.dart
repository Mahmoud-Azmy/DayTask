import 'package:day_task/core/styles.dart';
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
          final currentDayIndex =
              BlocProvider.of<GetTasksCubit>(context).daysListIndex;

          final filteredTasks =
              state.tasks.where((task) => task.day == currentDayIndex).toList();
          if (currentDayIndex == -1) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: TasksListViewItem(
                      taskModel: state.tasks[index],
                    ),
                  );
                },
                childCount: state.tasks.length,
              ),
            );
          }

          if (filteredTasks.isEmpty) {
            return SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Text(
                    'No tasks for this day',
                    style: Styles.textStyle22.copyWith(color: Colors.grey),
                  ),
                ),
              ),
            );
          }

          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: TasksListViewItem(
                    taskModel: filteredTasks[index],
                  ),
                );
              },
              childCount: filteredTasks.length,
            ),
          );
        } else if (state is GetTaskFailure) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text('Failed to fetch tasks'),
            ),
          );
        }

        return const SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
