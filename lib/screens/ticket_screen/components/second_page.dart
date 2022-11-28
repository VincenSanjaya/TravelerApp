import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/flight-ticket-screen/flight-ticket-screen.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/top-hotel.dart';
import 'package:flutter_traveler_app/screens/home-screen/home-screen.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:gap/gap.dart';
import 'package:flutter_traveler_app/utils/info_app.dart';

import '../../../utils/constant.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "assets/images/ticket_image_1.png",
                width: 150,
                height: 150,
              ),
            ),
            const Gap(20),
            Container(
              child: Text(
                "Ayo pesan tiketmu sekarang juga!\nKamu bisa pesan tiketmu impiamnu sekarang!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 17,
                    color: Styles.darkGrey,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Gap(50),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
                child: Text(
                  "Rekomendasi Hotel Untuk Kamu",
                  style: TextStyle(
                    fontSize: 18,
                    color: Styles.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),

              ),
            const Gap(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: topHotel.map((singleHotel) => TopHotel(tophotel: singleHotel))
                    .toList(),

              ),
            ),
            const Gap(20),
            //make button for seacrh flight tickets
            Container(
              width: AppLayout.getScreenWidth(),
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, FlightTicketScreen.routeName);
                },
                child: Text(
                  "Cari Tiket Pesawat",
                  style: TextStyle(
                    fontSize: 18,
                    color: Styles.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Styles.primaryColor,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
