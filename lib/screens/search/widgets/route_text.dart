import 'package:booking_app/core/res/styles/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteText extends StatelessWidget {
  final String text;
  final IconData icon;
  const RouteText({super.key, required this.text, required this.icon });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child:  Row(
        children: [
          Icon(icon, color: AppStyles.planeColor),
          const SizedBox(width: 10),
          Text(text)
        ],
      ),
    );
  }
}
