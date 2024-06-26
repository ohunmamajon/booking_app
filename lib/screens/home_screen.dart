import 'package:booking_app/core/res/media.dart';
import 'package:booking_app/core/res/styles/app_styles.dart';
import 'package:booking_app/core/utils/app_json.dart';
import 'package:booking_app/core/widgets/app_double_text.dart';
import 'package:booking_app/core/widgets/ticket_view.dart';
import 'package:booking_app/screens/widgets/hotel.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../core/utils/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyles.headLineStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Book Tickets", style: AppStyles.headLineStyle1)
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  child: const Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text("Search")
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                    bigText: 'Upcoming Flights',
                    smallText: 'View all',
                    func: () =>
                        Navigator.pushNamed(context, AppRoutes.allTickets)),
                const SizedBox(height: 15),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: ticketList
                            .map((singleTicket) =>
                                TicketView(ticket: singleTicket))
                            .toList())),
                const SizedBox(height: 40),
                AppDoubleText(
                    bigText: 'Hotels', smallText: 'View all', func: () {}),
                const SizedBox(height: 15),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: hotelList
                            .map((singleHotel) => Hotel(hotel: singleHotel))
                            .toList()))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
