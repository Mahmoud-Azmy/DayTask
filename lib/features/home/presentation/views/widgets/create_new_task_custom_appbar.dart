import 'package:day_task/core/assets.dart';
import 'package:day_task/core/styles.dart';
import 'package:flutter/widgets.dart';

class CreateNewTaskCustomAppBar extends StatelessWidget {
  const CreateNewTaskCustomAppBar({
    super.key, required this.text,
  });final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SizedBox(
              height: 20,
              child: Image.asset(
                Assets.arrowBack,
              )),
        ),
        const Spacer(),
        Text(text,
            style:
                Styles.textStyle20.copyWith(fontWeight: FontWeight.w500)),
        const Spacer()
      ],
    );
  }
}