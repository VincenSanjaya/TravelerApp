import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/bali-best.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/button-feature.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/carousel-banner.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/carousel-slider.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/destination.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/poster-exclusive.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/seacrhbar.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/ticket-view.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/top-hotel.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:flutter_traveler_app/utils/info_app.dart';
import 'package:flutter_traveler_app/utils/auth_service.dart';
import 'package:gap/gap.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    final size = AppLayout.getSize(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Searchbar(
            size: size,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Siapkan Liburanmu Sekarang!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w800,
                color: Styles.black,
              ),
            ),
          ),
          const Gap(15),
          ButtonFeature(),
          BannerCarousel(),
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Tiket Pesawat Terpupuler",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w800,
                color: Styles.black,
              ),
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((singleTicket) => TicketView(ticket: singleTicket))
                  .toList(),
            ),
          ),
          const Gap(40),
          SliderCarousel(),
          const Gap(40),
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Destinasi Terpopuler 2022",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w800,
                color: Styles.black,
              ),
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: destinationList
                  .map((singleHotel) =>
                      DestinationScreen(destination: singleHotel))
                  .toList(),
            ),
          ),
          const Gap(40),
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Destinasi Bali Untuk Kamu",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w800,
                color: Styles.black,
              ),
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: baliDestination
                  .map((singleBali) => BaliDestination(baliList: singleBali))
                  .toList(),
            ),
          ),
          const Gap(30),
          PosterExclusive(),
          const Gap(30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: topHotel
                  .map((singleHotel) => TopHotel(tophotel: singleHotel))
                  .toList(),

            ),
          ),
        ],
      ),
      //make green elevated button
    );
  }
}
