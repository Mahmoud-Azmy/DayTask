import 'package:day_task/consts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.text,
  });
  final void Function()? onPressed;
  final String text;
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
          child: Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.black, fontSize: 22),
            ),
          )),
    );
  }
}
