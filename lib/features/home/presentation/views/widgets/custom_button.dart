import 'package:day_task/consts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          decoration: BoxDecoration(
              color: kSeconedColor, borderRadius: BorderRadius.circular(4)),
          child: const Center(
            child: Text(
              'Create Task',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          )),
    );
  }
}
