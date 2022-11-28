import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:gap/gap.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FeaturePlan(
            title: "Rekomendasi Terbaik Untuk Liburanmu",
            image: "assets/images/favorite.png",
          ),
          const Gap(15),
          FeaturePlan(
            title: "Tandai Tempat Wishlist Kamu",
            image: "assets/images/location.png",
          ),
          const Gap(15),
          FeaturePlan(
            title: "Perjalanan Aman & Nyaman",
            image: "assets/images/safe.png",
          ),
          const Gap(15),
          FeaturePlan(
            title: "Bagikan & Berkolaborasi Dengan\nPengguna Lain",
            image: "assets/images/share.png",
          ),
          const Gap(20),
          Container(
            margin: EdgeInsets.only(left: 25),
            alignment: Alignment.centerLeft,
            child: Text(
              "Namakan Perjalananmu",
              style: TextStyle(
                  fontSize: 14,
                  color: Styles.black,
                  fontWeight: FontWeight.w800),
            ),
          ),
          const Gap(10),
          //make textfield
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: false,
                keyboardType: TextInputType.text,
                cursorColor: Styles.primaryColor,
                style:
                    TextStyle(color: Styles.black, fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Styles.primaryColor, width: 2.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  hintText: "Cth: Liburan Natal ke Bali",
                ),
              )),
          //make button
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: AppLayout.getScreenWidth(),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Buat Rencana",
                style: TextStyle(
                    color: Styles.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800),
              ),
              style: ElevatedButton.styleFrom(
                primary: Styles.primaryColor,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(55),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturePlan extends StatelessWidget {
  const FeaturePlan({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20, left: 30),
        child: Row(children: [
          Image.asset(
            image,
            width: 22,
            height: 22,
          ),
          const Gap(20),
          Text(
            title,
            style: TextStyle(
              color: Styles.black,
              fontSize: 17,
            ),
          ),
        ]));
  }
}
