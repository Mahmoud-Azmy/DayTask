import 'package:day_task/core/models/task_model.dart';
import 'package:day_task/core/styles.dart';
import 'package:day_task/features/home/presentation/manager/create_task_cubit/create_task_cubit.dart';
import 'package:day_task/features/home/presentation/views/widgets/create_new_task_custom_appbar.dart';
import 'package:day_task/features/home/presentation/views/widgets/create_new_task_details.dart';
import 'package:day_task/features/home/presentation/views/widgets/create_new_task_title.dart';
import 'package:day_task/features/home/presentation/views/widgets/custom_button.dart';
import 'package:day_task/features/home/presentation/views/widgets/set_date_and_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateNewTaskBody extends StatefulWidget {
  const CreateNewTaskBody({super.key});

  @override
  State<CreateNewTaskBody> createState() => _CreateNewTaskBodyState();
}

class _CreateNewTaskBodyState extends State<CreateNewTaskBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? taskTitle, taskDetails;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const CreateNewTaskCustomAppBar(),
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
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              BlocProvider.of<CreateTaskCubit>(context)
                                  .createNewTask(TaskModel(
                                      title: taskTitle!,
                                      description: taskDetails!,
                                      date: DateTime.now().toString(),
                                      time: ''));
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
