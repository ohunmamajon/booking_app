

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xFFF4F6FD)
        ),
        child:  Row(
          children: [
            AppTabs(tabText: firstTab),
            AppTabs(tabText: secondTab, tabBorder: true, tabColor: true)
          ],
        ));
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({super.key, required this.tabText, this.tabBorder = false, this.tabColor = false});

  final String tabText;
  final bool tabBorder;
  final bool tabColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 7)
    ,
    width
    :
    size
    .
    width * 0.44,
    decoration: BoxDecoration(
    color: tabColor == false ? Colors.white : Colors.transparent,
    borderRadius: tabBorder == false ? const BorderRadius.horizontal(left: Radius.circular(50)): const BorderRadius.horizontal(right: Radius.circular(50)
    )),
    child: Center(child: Text(tabText)),
    );
  }
}
