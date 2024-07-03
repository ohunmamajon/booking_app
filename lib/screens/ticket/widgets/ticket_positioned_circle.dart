import 'package:flutter/material.dart';
import '../../../core/res/styles/app_styles.dart';

class TicketPositionedCircle extends StatelessWidget {
  final bool? left;
  const TicketPositionedCircle({super.key, this.left});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
        left: left == true ? 22 : null,
        right: left != true ? 22 : null,
        top: 252,
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: AppStyles.textColor),
          ),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: AppStyles.textColor,
          ),
        ));
  }
}
