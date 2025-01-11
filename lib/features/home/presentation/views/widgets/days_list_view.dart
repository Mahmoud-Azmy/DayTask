import 'package:day_task/core/functions/generate_days_list.dart';
import 'package:day_task/features/home/presentation/manager/get_tasks_cubit/get_tasks_cubit.dart';
import 'package:day_task/features/home/presentation/views/widgets/days_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DaysListView extends StatelessWidget {
  const DaysListView({super.key});

  @override
  Widget build(BuildContext context) {
    final days = generateDaysList();

    return BlocBuilder<GetTasksCubit, GetTasksState>(
      builder: (context, state) {
        return SizedBox(
          height: 90,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: days.length,
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final dayData = days[index].split(',');
              return DaysListViewItem(
                isSelected:
                    BlocProvider.of<GetTasksCubit>(context).selectedDay ==
                        index,
                dayNumber: dayData[0],
                dayName: dayData[1],
                onTap: () {
                  BlocProvider.of<GetTasksCubit>(context).setSelectedDay(index);
                  BlocProvider.of<GetTasksCubit>(context).getTasks();
                },
              );
            },
          ),
        );
      },
    );
  }
}
