import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/booking-flight-screen/components/body.dart';

class BookingFlightScreen extends StatefulWidget {
  static String routeName = "/bookingFlightScreen";
  const BookingFlightScreen({super.key});

  @override
  State<BookingFlightScreen> createState() => _BookingFlightScreenState();
}

class _BookingFlightScreenState extends State<BookingFlightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFEAEAEA),
      body: BodyBookingflight(),
    );
  }
}
