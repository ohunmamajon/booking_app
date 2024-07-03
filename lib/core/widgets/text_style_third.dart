import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({super.key, required this.text, this.isColor});
  final bool? isColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: isColor == null ? AppStyles.headLineStyle3
            .copyWith(color: Colors.white): AppStyles.headLineStyle3);
  }
}
