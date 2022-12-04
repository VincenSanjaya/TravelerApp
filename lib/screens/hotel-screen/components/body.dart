import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/components/bottom-navigation.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/top-hotel.dart';
import 'package:flutter_traveler_app/screens/hotel-screen/components/hotel-list.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/info_app.dart';
import 'package:gap/gap.dart';

class BodyHotel extends StatefulWidget {
  const BodyHotel({Key? key}) : super(key: key);

  @override
  State<BodyHotel> createState() => _BodyHotelState();
}

class _BodyHotelState extends State<BodyHotel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: IconButton(onPressed: () {
              Navigator.pushNamed(context, BottomBar.routeName);
            }, icon: const Icon(Icons.arrow_back_ios)),
          ),
          const Gap(15),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hotel",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Styles.black,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.centerRight,
                child: IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list)),
              ),
            ],
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: topHotel.map((singleHotel) => HotelList(hotellist: singleHotel))
                  .toList(),
            ),
          ),
            ]
          )
      );
  }
}
