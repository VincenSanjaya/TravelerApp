import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import 'card_profile.dart';
import 'profile-top-bar.dart';

class BodyProfile extends StatefulWidget {
  const BodyProfile({Key? key}) : super(key: key);

  @override
  State<BodyProfile> createState() => _BodyProfileState();
}

class _BodyProfileState extends State<BodyProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        decoration: BoxDecoration(
          color: Styles.lightGrey.withOpacity(0.55),
        ),
        child: Column(
          children: [
            ProfileTopBar(),
            const Gap(20),
            Container(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Pilihan Jenis Pembayaran",
                  style: Styles.headlineStyle2.copyWith(
                      color: Styles.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )),
            const Gap(10),
            CardProfile(
              icon: Icon(FontAwesomeIcons.creditCard),
              judul: "Kartu Kredit",
              desc: "Tambahkan kartu kredit anda",
            ),
            const Gap(25),
            Container(
              height: 150,
              width: double.infinity,
              margin:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding - 15),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FluentSystemIcons.ic_fluent_airplane_filled,
                            color: Styles.primaryColor,
                            size: 25,
                          ),
                          const Gap(20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Travel Pay",
                                style: Styles.headlineStyle2.copyWith(
                                    color: Styles.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Styles.darkerPrimary,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Divider(
                      color: Styles.grey,
                      thickness: 1,
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FluentSystemIcons.ic_fluent_bank_filled,
                            color: Styles.primaryColor,
                            size: 25,
                          ),
                          const Gap(20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TasKu",
                                style: Styles.headlineStyle2.copyWith(
                                    color: Styles.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Aktifkan sekarang untuk menikmati pembayaran \nmudah dan cepat!",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Styles.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Styles.darkerPrimary,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(10),
            CardProfile(
                judul: "TravelCoin",
                icon: Icon(Icons.currency_bitcoin),
                desc: "Bayar dengan mata uang digital yang lebih cepat!"),
            const Gap(20),
            Container(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Keuntungan Member",
                  style: Styles.headlineStyle2.copyWith(
                      color: Styles.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )),
            const Gap(15),
            CardProfile(
                judul: "Uang Refund",
                icon: Icon(Icons.monetization_on),
                desc: "Cancel Liburanmu? Dapatkan uang mu kembali"),
            const Gap(5),
            CardProfile(
                judul: "Travel Priority",
                icon: Icon(FontAwesomeIcons.crown),
                desc: "Dapatkan banyak promo menarik dari kami"),
            const Gap(15),
            Container(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Asuransi Perjalanan",
                  style: Styles.headlineStyle2.copyWith(
                      color: Styles.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )),
            const Gap(15),
            Container(
              height: 100,
              width: double.infinity,
              margin:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding - 15),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: InkWell(
                    splashColor: Styles.primaryColor.withAlpha(70),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/insurance.png",
                            height: 50,
                            width: 50,
                          ),
                          const Gap(25),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Membuat perjalanan kamu menjadi \nlebih aman dan menyenangkan",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Styles.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Gap(10),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Lihat Detail",
                                  style: Styles.headlineStyle2.copyWith(
                                      color: Styles.primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            const Gap(15),
            CardProfile(judul: "Bantuan", icon: Icon(Icons.help_outline_rounded), desc: "Kami siap membantu Anda, setiap waktu"),
            // const Gap(5),
            CardProfile(judul: "Tentang", icon: Icon(Icons.info_outline_rounded), desc: "Tentang Traveler"),
            // const Gap(5),
            CardProfile(judul: "Pengaturan", icon: Icon(Icons.settings), desc: "Pengaturan akun anda"),
          ],
        ),
      ),
    );
  }
}
