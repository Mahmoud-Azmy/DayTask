import 'package:day_task/consts.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.controller,
      this.onSaved,
      this.onChanged});
  final String hintText;
  final int maxLines;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      onSaved: onSaved,
      maxLines: maxLines,
      controller: controller,
      onChanged: onChanged,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: kThirdColor,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(0.6),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            color: kThirdColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            color: kThirdColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            color: kThirdColor,
          ),
        ),
      ),
    );
  }
}
