import 'package:day_task/core/styles.dart';
import 'package:flutter/material.dart';

class DaysListViewItem extends StatelessWidget {
  const DaysListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 70,
      decoration: BoxDecoration(
        color: const Color(0xff263238),
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '1',
            style: Styles.textStyle20.copyWith(fontSize: 22),
          ),
          Text(
            'Mon',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
