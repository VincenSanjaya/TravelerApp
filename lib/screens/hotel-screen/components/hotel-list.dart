import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';

class HotelList extends StatelessWidget {
  final Map<String, dynamic> hotellist;
  const HotelList({
    Key? key, required this.hotellist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: AppLayout.getScreenWidth(),
      height: AppLayout.getHeight(280),
      margin: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: Styles.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: Styles.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
              child: Image.asset(
            "assets/images/${hotellist['image']}",
            height: AppLayout.getHeight(120),
            width: AppLayout.getScreenWidth(),
            fit: BoxFit.cover,
          )),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 12, top: 20),
            child: Text(
              "${hotellist['hotel']}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Styles.black,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 12, top: 5),
            child: Text(
              "${hotellist['location']}",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Styles.black,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 12, top: 30),
            child: Text(
              "Harga",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Styles.grey,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 12, top: 5),
            child: Text(
              "${hotellist['price']}/Malam",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Styles.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
