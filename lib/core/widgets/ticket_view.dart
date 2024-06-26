import 'package:booking_app/core/res/styles/app_styles.dart';
import 'package:booking_app/core/widgets/app_column_text_layout.dart';
import 'package:booking_app/core/widgets/app_layoutbuilder_widget.dart';
import 'package:booking_app/core/widgets/big_circle.dart';
import 'package:booking_app/core/widgets/big_dot.dart';
import 'package:booking_app/core/widgets/text_style_fourth.dart';
import 'package:booking_app/core/widgets/text_style_third.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            // blue part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  // Show departure and destination with first line
                  Row(
                    children: [
                      TextStyleThird(text: ticket["from"]["code"]),
                      Expanded(child: Container()),
                      const BigDot(),
                      // ticket flying icon
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(randomDivider: 8)),
                          Center(
                              child: Transform.rotate(
                                  angle: 1.57,
                                  child: const Icon(Icons.local_airport_rounded,
                                      color: Colors.white)))
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket["to"]["code"])
                    ],
                  ),
                  const SizedBox(height: 3),
                  // Show departure and destination names with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: ticket["from"]["name"]),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket["flying_time"]),
                      Expanded(child: Container()),
                       SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: ticket["to"]["name"], align: TextAlign.end),
                      )
                    ],
                  )
                ],
              ),
            ),
            // circles and dots
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                    BigCircle(isOnRight: false),
                  Expanded(child: AppLayoutbuilderWidget(randomDivider: 20, width: 6)),
                    BigCircle(isOnRight: true)
                ],
              ),
            ),
            // orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  // Show departure and destination with first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    AppColumnTextLayout(topText: ticket["date"], bottomText: "Date"),
                      AppColumnTextLayout(topText: ticket["departure_time"], bottomText: "Departure time", align: CrossAxisAlignment.center),
                      AppColumnTextLayout(topText: ticket["number"].toString(), bottomText: "Number", align: CrossAxisAlignment.end)
                    ],
                  ),
                 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
