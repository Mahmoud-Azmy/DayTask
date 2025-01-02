import 'package:day_task/features/home/presentation/views/widgets/create_new_task_body.dart';
import 'package:flutter/material.dart';

class CreateNewTaskView extends StatelessWidget {
  const CreateNewTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: const Scaffold(
        body: CreateNewTaskBody(),
      ),
    );
  }
}
