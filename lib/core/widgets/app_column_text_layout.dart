import 'package:booking_app/core/widgets/text_style_fourth.dart';
import 'package:booking_app/core/widgets/text_style_third.dart';
import 'package:flutter/cupertino.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout({super.key, required this.topText, required this.bottomText, this.align = CrossAxisAlignment.start, this.isColor});
final String topText;
final String bottomText;
final CrossAxisAlignment align;
final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: align,
      children: [
        TextStyleThird(text: topText, isColor: isColor),
        const SizedBox(height: 5),
        TextStyleFourth(text: bottomText, isColor: isColor)
      ],);
  }
}
