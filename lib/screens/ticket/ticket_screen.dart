import 'package:barcode_widget/barcode_widget.dart';
import 'package:booking_app/core/res/media.dart';
import 'package:booking_app/core/res/styles/app_styles.dart';
import 'package:booking_app/core/utils/app_json.dart';
import 'package:booking_app/core/widgets/app_column_text_layout.dart';
import 'package:booking_app/core/widgets/app_layoutbuilder_widget.dart';
import 'package:booking_app/core/widgets/ticket_view.dart';
import 'package:booking_app/screens/search/widgets/ticket_tabs.dart';
import 'package:booking_app/screens/ticket/widgets/ticket_positioned_circle.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const SizedBox(height: 40),
              Text("Tickets", style: AppStyles.headLineStyle1),
              const SizedBox(height: 20),
              const TicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              const SizedBox(height: 20),
              Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(ticket: ticketList[0], isColor: true)),
              const SizedBox(height: 1),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyles.ticketColor,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                            topText: 'Ohun Mamajon',
                            bottomText: 'Passenger',
                            isColor: true),
                        AppColumnTextLayout(
                            topText: '3342 346563',
                            bottomText: 'Passport',
                            align: CrossAxisAlignment.end,
                            isColor: true)
                      ],
                    ),
                    const SizedBox(height: 20),
                    const AppLayoutBuilderWidget(
                        randomDivider: 15, width: 5, isColor: true),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                            topText: '2353 3434523225',
                            bottomText: 'Numebr of E-ticket',
                            isColor: true),
                        AppColumnTextLayout(
                            topText: 'B43432',
                            bottomText: 'Booking Code',
                            align: CrossAxisAlignment.end,
                            isColor: true)
                      ],
                    ),
                    const SizedBox(height: 20),
                    const AppLayoutBuilderWidget(
                        randomDivider: 15, width: 5, isColor: true),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(children: [
                              Image.asset(AppMedia.visaCard, scale: 11),
                              Text(" *** 4254", style: AppStyles.headLineStyle3)
                            ]),
                            const SizedBox(height: 5),
                            Text("Payment method",
                                style: AppStyles.headLineStyle4)
                          ],
                        ),
                        const AppColumnTextLayout(
                            topText: '\$268.99',
                            bottomText: 'Price',
                            align: CrossAxisAlignment.end,
                            isColor: true)
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 1),
              // Bottom of the ticket detail section
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: AppStyles.ticketColor,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(21),
                        bottomLeft: Radius.circular(21))),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      barcode: Barcode.code128(),
                      data: 'http://www.google.com',
                      drawText: false,
                      color: AppStyles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // colorful ticket
              Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(ticket: ticketList[0])),
            ],
          ),
          const TicketPositionedCircle(left: true),
          const TicketPositionedCircle()
        ],
      ),
    );
  }
}
