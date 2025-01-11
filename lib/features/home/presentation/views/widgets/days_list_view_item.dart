import 'package:day_task/consts.dart';
import 'package:day_task/core/styles.dart';
import 'package:flutter/material.dart';

class DaysListViewItem extends StatelessWidget {
  const DaysListViewItem({
    super.key,
    required this.isSelected,
    required this.dayNumber,
    required this.dayName,
    this.onTap,
  });

  final bool isSelected;
  final String dayNumber;
  final String dayName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 90,
        width: 70,
        decoration: BoxDecoration(
          color: isSelected ? kSeconedColor : kThirdColor,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            if (!isSelected)
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dayNumber,
              style: Styles.textStyle20.copyWith(
                fontSize: 22,
                color: isSelected ? Colors.black : null,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              dayName,
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w400,
                color: isSelected ? Colors.black : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
