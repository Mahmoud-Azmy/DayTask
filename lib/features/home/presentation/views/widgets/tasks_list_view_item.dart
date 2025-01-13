import 'package:day_task/consts.dart';
import 'package:day_task/core/app_router.dart';
import 'package:day_task/core/models/task_model.dart';
import 'package:day_task/core/styles.dart';
import 'package:day_task/features/home/presentation/manager/get_tasks_cubit/get_tasks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TasksListViewItem extends StatelessWidget {
  const TasksListViewItem({super.key, required this.taskModel});
  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.editTaskView, extra: taskModel);
      },
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: kThirdColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            Container(
              width: 8,
              color: kSeconedColor,
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(taskModel.title,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                Text('18:30',
                    style: Styles.textStyle12.copyWith(
                        fontWeight: FontWeight.w500, color: Colors.grey)),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                taskModel.delete();
                BlocProvider.of<GetTasksCubit>(context).getTasks();
              },
              icon: const Icon(
                Icons.delete,
                size: 32,
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
