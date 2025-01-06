import 'package:day_task/features/home/presentation/views/widgets/custom_set_date_and_time_widget.dart';
import 'package:flutter/material.dart';

class SetDateAndTime extends StatelessWidget {
  const SetDateAndTime({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width to calculate responsive sizes
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 360;

    // Use LayoutBuilder to make the widget responsive to its parent constraints
    return LayoutBuilder(
      builder: (context, constraints) {
        // If the width is too small, stack the widgets vertically
        return OrientationBuilder(
          builder: (context, orientation) {
            // For larger screens or landscape, keep the original row layout
            return Row(
              children: [
                Expanded(
                  child: CustomSetDateAndTimeWidget(
                    iconData: Icons.calendar_today,
                    date: '15/11/2022',
                    maxWidth: constraints.maxWidth / 2 - 5,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomSetDateAndTimeWidget(
                    iconData: Icons.access_time,
                    date: '10:30 AM',
                    maxWidth: constraints.maxWidth / 2 - 5,
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
