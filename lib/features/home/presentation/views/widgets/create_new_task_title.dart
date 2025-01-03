import 'package:day_task/features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CreateNewTaskTitle extends StatelessWidget {
  const CreateNewTaskTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(hintText: 'Enter task titl');
  }
}
