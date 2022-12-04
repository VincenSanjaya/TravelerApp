import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:gap/gap.dart';

import 'card_detail_order.dart';
import 'card_detail_price.dart';

class BodyHotelPayment extends StatefulWidget {
  BodyHotelPayment({Key? key}) : super(key: key);

  @override
  _BodyHotelPaymentState createState() => _BodyHotelPaymentState();
}

class _BodyHotelPaymentState extends State<BodyHotelPayment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          CardDetailOder(),
          const Gap(20),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Rincian Biaya",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Styles.black,
              ),
            ),
          ),
          CardDetailPrice(),
          const Gap(20),
          Container(
            width: AppLayout.getScreenWidth(),
            child: ElevatedButton(onPressed: () {},

                style: ElevatedButton.styleFrom(

                  backgroundColor: Styles.brown,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Lanjutkan Ke Pembayaran",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Styles.white,
                  ),
                )
            ),
          )],
      ),
    );
  }
}


