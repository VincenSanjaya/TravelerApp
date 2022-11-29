import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/flight-payment-screen/components/body.dart';

class FlightPaymentScreen extends StatefulWidget {
  const FlightPaymentScreen({super.key});

  @override
  State<FlightPaymentScreen> createState() => _FlightPaymentScreenState();
}

class _FlightPaymentScreenState extends State<FlightPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyFlightPayment(),
    );
  }
}