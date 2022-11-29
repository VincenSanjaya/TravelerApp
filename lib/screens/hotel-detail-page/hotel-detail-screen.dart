import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/carousel-banner.dart';
import 'package:flutter_traveler_app/screens/hotel-detail-page/components/body.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/info_app.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:readmore/readmore.dart';

class HotelDetailScreen extends StatefulWidget {
  HotelDetailScreen({Key? key,}) : super(key: key);

  @override
  State<HotelDetailScreen> createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyHotelDetail(),
    );
  }
}
