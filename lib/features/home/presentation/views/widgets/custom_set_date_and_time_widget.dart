import 'package:day_task/consts.dart';
import 'package:flutter/material.dart';

class CustomSetDateAndTimeWidget extends StatelessWidget {
  const CustomSetDateAndTimeWidget({
    super.key,
    required this.date,
    required this.iconData,
    required this.maxWidth,
    this.onPressed,
  });

  final String date;
  final IconData iconData;
  final double maxWidth;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    // Calculate responsive sizes
    final screenWidth = MediaQuery.of(context).size.width;
    final iconSize = screenWidth < 360 ? 18.0 : 24.0;
    final fontSize = screenWidth < 360 ? 16.0 : 20.0;
    final containerHeight = screenWidth < 360 ? 50.0 : 60.0;

    return Container(
      height: containerHeight,
      decoration: BoxDecoration(
          color: kThirdColor, borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4)),
                color: kSeconedColor,
              ),
              height: containerHeight,
              child: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  iconData,
                  color: Colors.black,
                  size: iconSize,
                ),
              )),
          const SizedBox(width: 10),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                date,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
