import 'package:booking_app/core/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText, required this.func});

  final String smallText;
  final String bigText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [ Text(bigText, style: AppStyles.headLineStyle2),
      InkWell(
        onTap: func,
        child: Text(smallText, style: AppStyles.textStyle.copyWith(
          color: AppStyles.primaryColor
        )),
      )
     ],
    );
  }
}
