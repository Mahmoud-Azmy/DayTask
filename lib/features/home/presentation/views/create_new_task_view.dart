import 'package:day_task/features/home/presentation/views/widgets/create_new_task_custom_appbar.dart';
import 'package:flutter/material.dart';

class CreateNewTaskView extends StatelessWidget {
  const CreateNewTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CreateNewTaskCustomAppBar()
        ],
      ),
    ));
  }
}
