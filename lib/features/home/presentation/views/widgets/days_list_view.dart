import 'package:day_task/features/home/presentation/views/widgets/days_list_view_item.dart';
import 'package:flutter/material.dart';

class DaysListView extends StatelessWidget {
  const DaysListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return const DaysListViewItem();
        },
      ),
    );
  }
}
