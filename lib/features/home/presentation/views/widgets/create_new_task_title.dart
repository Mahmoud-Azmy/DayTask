import 'package:day_task/features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CreateNewTaskTitle extends StatelessWidget {
  const CreateNewTaskTitle({
    super.key,
    this.onSaved,
  });
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: 'Enter task title',
      onSaved: onSaved,
    );
  }
}
