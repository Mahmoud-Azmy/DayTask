import 'package:day_task/features/home/presentation/manager/create_task_cubit/create_task_cubit.dart';
import 'package:day_task/features/home/presentation/views/widgets/custom_set_date_and_time_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SetDateAndTime extends StatelessWidget {
  const SetDateAndTime({super.key});

  @override
  Widget build(BuildContext context) {
    // Use LayoutBuilder to make the widget responsive to its parent constraints
    return BlocBuilder<CreateTaskCubit, CreateTaskState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<CreateTaskCubit>(context);
        return OrientationBuilder(
          builder: (context, orientation) {
            return Row(
              children: [
                Expanded(
                  child: CustomSetDateAndTimeWidget(
                    iconData: Icons.calendar_today,
                    date: cubit.formatDate(),
                    maxWidth: MediaQuery.of(context).size.width / 2 - 5,
                    onPressed: () {
                      cubit.selectDate(context);
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomSetDateAndTimeWidget(
                    iconData: Icons.access_time,
                    date: cubit.selectedTime.format(context),
                    maxWidth: MediaQuery.of(context).size.width / 2 - 5,
                    onPressed: () {
                      cubit.selectTime(context);
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
