import 'package:day_task/core/models/task_model.dart';
import 'package:day_task/features/home/presentation/manager/create_task_cubit/create_task_cubit.dart';
import 'package:day_task/features/home/presentation/views/widgets/edit_task_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditTaskView extends StatelessWidget {
  const EditTaskView({super.key, required this.taskModel});
  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: EditTaskViewBody(
          taskModel: taskModel,
        ),
      ),
    );
  }
}
