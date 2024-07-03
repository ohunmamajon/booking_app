
import 'package:booking_app/core/res/styles/app_styles.dart';
import 'package:booking_app/screens/search/widgets/find_tickets.dart';
import 'package:booking_app/screens/search/widgets/route_text.dart';
import 'package:booking_app/screens/search/widgets/ticket_promotion.dart';
import 'package:booking_app/screens/search/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_routes.dart';
import '../../core/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text("What are\nyou looking for?",
              style: AppStyles.headLineStyle1.copyWith(fontSize: 35)),
          const SizedBox(height: 20),
          const TicketTabs(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
          const SizedBox(height: 25),
          const RouteText(
              text: "Departure", icon: Icons.flight_takeoff_rounded),
          const SizedBox(height: 20),
          const RouteText(text: "Arrival", icon: Icons.flight_land_rounded),
          const SizedBox(height: 25),
          const FindTickets(),
          const SizedBox(height: 40),
          AppDoubleText(
              bigText: 'Upcoming Flights',
              smallText: 'View all',
              func: () => Navigator.pushNamed(context, AppRoutes.allTickets)),
          const SizedBox(height: 15),
          const TicketPromotion()
        ],
      ),
    );
  }
}
