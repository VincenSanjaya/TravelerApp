import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';

import 'components/body.dart';

class FlightTicketScreen extends StatefulWidget {
  static String routeName = "/flight-ticket";
  const FlightTicketScreen({Key? key}) : super(key: key);

  @override
  State<FlightTicketScreen> createState() => _FlightTicketScreenState();
}

class _FlightTicketScreenState extends State<FlightTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.lightGrey,
      body: const BodyFlightTicket(),
    );
  }
}
