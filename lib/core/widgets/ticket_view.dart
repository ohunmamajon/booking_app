import 'package:booking_app/core/res/styles/app_styles.dart';
import 'package:booking_app/core/widgets/app_layoutbuilder_widget.dart';
import 'package:booking_app/core/widgets/big_circle.dart';
import 'package:booking_app/core/widgets/big_dot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21), topRight: Radius.circular(21))),
              child: Column(
                children: [
                  // Show departure and destination with first line
                  Row(
                    children: [
                      Text("NYC",
                          style:
                              AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      const BigDot(),
                       Expanded(child: Stack(children: [
                        const SizedBox(
                            height: 24,
                            child: AppLayoutbuilderWidget(randomDivider: 8)),
                        Center(child: Transform.rotate(angle: 1.57,
                        child: const Icon(Icons.local_airport_rounded, color: Colors.white)))
                      ],)),
                      const BigDot(),
                      Expanded(child: Container()),
                      Text("LDN",
                          style:
                              AppStyles.headLineStyle3.copyWith(color: Colors.white))
                    ],
                  ),
                  const SizedBox(height: 3),
                  // Show departure and destination names with time
                  Row(
                    children: [
                      Text("New-York",
                          style:
                          AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      Text("8H 30M",
                          style:
                          AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      Text("London",
                          style:
                          AppStyles.headLineStyle3.copyWith(color: Colors.white))
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  BigCircle(isOnRight: false),
                  Expanded(child: Container()),
                  BigCircle(isOnRight: true)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration:  BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  // Show departure and destination with first line
                  Row(
                    children: [
                      Text("NYC",
                          style:
                          AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(child: Stack(children: [
                        const SizedBox(
                            height: 24,
                            child: AppLayoutbuilderWidget(randomDivider: 8)),
                        Center(child: Transform.rotate(angle: 1.57,
                            child: const Icon(Icons.local_airport_rounded, color: Colors.white)))
                      ],)),
                      const BigDot(),
                      Expanded(child: Container()),
                      Text("LDN",
                          style:
                          AppStyles.headLineStyle3.copyWith(color: Colors.white))
                    ],
                  ),
                  const SizedBox(height: 3),
                  // Show departure and destination names with time
                  Row(
                    children: [
                      Text("New-York",
                          style:
                          AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      Text("8H 30M",
                          style:
                          AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      Text("London",
                          style:
                          AppStyles.headLineStyle3.copyWith(color: Colors.white))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
