import 'package:day_task/consts.dart';
import 'package:day_task/core/styles.dart';
import 'package:flutter/material.dart';

class TasksListViewItem extends StatelessWidget {
  const TasksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: kThirdColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Container(
            width: 8,
            color: kSeconedColor,
          ),
          const SizedBox(width: 20),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Wireframe',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    )),
                Text('18:30',
                    style: Styles.textStyle12.copyWith(
                        fontWeight: FontWeight.w500, color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
