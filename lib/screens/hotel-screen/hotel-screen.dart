import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/hotel-screen/components/body.dart';

class HotelScreen extends StatefulWidget {
  static String routeName = "/hotelscreen";
  const HotelScreen({Key? key}) : super(key: key);

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyHotel(),
    );
  }
}
