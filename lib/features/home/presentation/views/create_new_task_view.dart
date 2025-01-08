import 'package:day_task/features/home/presentation/manager/create_task_cubit/create_task_cubit.dart';
import 'package:day_task/features/home/presentation/views/widgets/create_new_task_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateNewTaskView extends StatelessWidget {
  const CreateNewTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: BlocConsumer<CreateTaskCubit, CreateTaskState>(
          listener: (context, state) {
            if (state is CreateTaskSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return const CreateNewTaskBody();
          },
        ),
      ),
    );
  }
}
