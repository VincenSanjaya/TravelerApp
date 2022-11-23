import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:gap/gap.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              "assets/images/ticket_image_2.png",
              width: 150,
              height: 150,
            ),
          ),
          const Gap(20),
          Container(
            child: Text(
              "Kamu belum ada riwayat perjalanan\nAyo siapkan liburanmu sekarang!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17,
                  color: Styles.darkGrey,
                  fontWeight: FontWeight.w500),
            ),
          ),

        ],
      ),
    );
  }
}
