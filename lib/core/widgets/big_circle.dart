import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  const BigCircle({super.key, required this.isOnRight});
  final bool isOnRight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(decoration:
      BoxDecoration(
          color: Colors.white,
          borderRadius: isOnRight == true ? const BorderRadius.only(topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10)) :  const BorderRadius.only(topRight: Radius.circular(10),
              bottomRight: Radius.circular(10))
      )
      ),
    );
  }
}
