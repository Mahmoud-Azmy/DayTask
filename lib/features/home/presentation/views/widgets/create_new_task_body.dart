import 'package:day_task/core/styles.dart';
import 'package:day_task/features/home/presentation/views/widgets/create_new_task_custom_appbar.dart';
import 'package:day_task/features/home/presentation/views/widgets/create_new_task_details.dart';
import 'package:day_task/features/home/presentation/views/widgets/create_new_task_title.dart';
import 'package:day_task/features/home/presentation/views/widgets/custom_button.dart';
import 'package:day_task/features/home/presentation/views/widgets/set_date_and_time.dart';
import 'package:flutter/material.dart';

class CreateNewTaskBody extends StatelessWidget {
  const CreateNewTaskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          CreateNewTaskCustomAppBar(),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Task Title',
                        style: Styles.textStyle20,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CreateNewTaskTitle(),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Task details',
                        style: Styles.textStyle20,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CreateNewTaskDetails(),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Date and Time',
                        style: Styles.textStyle20,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SetDateAndTime(),
                      SizedBox(
                        height: 30,
                      ),
                      CustomButton()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
