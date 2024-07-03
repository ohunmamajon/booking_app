import 'package:flutter/material.dart';
import '../res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  const TextStyleFourth(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isColor});

  final String text;
  final TextAlign align;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: align,
        style: isColor == null
            ? AppStyles.headLineStyle4.copyWith(color: Colors.white)
            : AppStyles.headLineStyle4);
  }
}
