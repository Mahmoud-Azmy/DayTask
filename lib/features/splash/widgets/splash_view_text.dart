import 'package:day_task/consts.dart';
import 'package:day_task/core/styles.dart';
import 'package:flutter/material.dart';

class SplashViewText extends StatelessWidget {
  const SplashViewText({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final Size screenSize = MediaQuery.of(context).size;

    // Calculate responsive font sizes
    // Using minimum to ensure text doesn't get too large on wide screens
    final double headingFontSize = screenSize.width * 0.12;
    const double maxHeadingSize = 50.0;
    final double responsiveHeadingSize =
        headingFontSize > maxHeadingSize ? maxHeadingSize : headingFontSize;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Manage \nYour \nTask with',
                style: Styles.textStyle30.copyWith(
                  fontFamily: kPilatExtended,
                  fontSize: responsiveHeadingSize,
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'DayTask',
                style: Styles.textStyle22.copyWith(
                  color: kSeconedColor,
                  fontSize: responsiveHeadingSize,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

// import 'package:day_task/consts.dart';
// import 'package:day_task/core/styles.dart';
// import 'package:flutter/material.dart';

// class SplashViewText extends StatelessWidget {
//   const SplashViewText({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Manage \nYour \nTask with',
//           style: Styles.textStyle30
//               .copyWith(fontFamily: kPilatExtended, fontSize: 50),
//         ),
//         Text(
//           'DayTask',
//           style:
//               Styles.textStyle22.copyWith(color: kSeconedColor, fontSize: 50),
//         ),
//       ],
//     );
//   }
// }
