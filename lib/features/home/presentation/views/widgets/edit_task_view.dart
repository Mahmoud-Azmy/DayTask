import 'package:day_task/core/models/task_model.dart';
import 'package:day_task/core/styles.dart';
import 'package:day_task/features/home/presentation/manager/create_task_cubit/create_task_cubit.dart';
import 'package:day_task/features/home/presentation/manager/get_tasks_cubit/get_tasks_cubit.dart';
import 'package:day_task/features/home/presentation/views/widgets/create_new_task_custom_appbar.dart';
import 'package:day_task/features/home/presentation/views/widgets/create_new_task_details.dart';
import 'package:day_task/features/home/presentation/views/widgets/create_new_task_title.dart';
import 'package:day_task/features/home/presentation/views/widgets/custom_button.dart';
import 'package:day_task/features/home/presentation/views/widgets/set_date_and_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditTaskViewBody extends StatefulWidget {
  const EditTaskViewBody({super.key, required this.taskModel});
  final TaskModel taskModel;

  @override
  State<EditTaskViewBody> createState() => _EditTaskViewBodyState();
}

class _EditTaskViewBodyState extends State<EditTaskViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? taskTitle, taskDetails;
  var titleController = TextEditingController();
  var subTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    titleController.text = widget.taskModel.title;
    subTitleController.text = widget.taskModel.description;

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const CreateNewTaskCustomAppBar(
              text: 'Edit the task',
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Task Title',
                          style: Styles.textStyle20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CreateNewTaskTitle(
                          controller: titleController,
                          onSaved: (value) {
                            taskTitle = value;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Task details',
                          style: Styles.textStyle20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CreateNewTaskDetails(
                          controller: subTitleController,
                          onSaved: (value) {
                            taskDetails = value;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Date and Time',
                          style: Styles.textStyle20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SetDateAndTime(),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                          text: 'Edit Task',
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              widget.taskModel.title =
                                  taskTitle ?? widget.taskModel.title;
                              widget.taskModel.description =
                                  taskDetails ?? widget.taskModel.description;
                              widget.taskModel.save();
                              BlocProvider.of<GetTasksCubit>(context)
                                  .getTasks();

                              Navigator.pop(context);
                            } else {
                              autovalidateMode = AutovalidateMode.always;
                              setState(() {});
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
