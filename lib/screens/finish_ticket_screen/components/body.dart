import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/components/bottom-navigation.dart';
import 'package:flutter_traveler_app/screens/finish_ticket_screen/components/ticket_detail_model.dart';
import 'package:flutter_traveler_app/screens/home-screen/home-screen.dart';
import 'package:flutter_traveler_app/screens/setting_screen/setting_screen.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:gap/gap.dart';

class BodyFinish extends StatefulWidget {
  const BodyFinish({Key? key}) : super(key: key);

  @override
  State<BodyFinish> createState() => _BodyFinishState();
}

class _BodyFinishState extends State<BodyFinish> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.symmetric( vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(

              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, BottomBar.routeName);
                      },
                      icon: Icon(Icons.close_rounded)),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SettingScreen.routeName);
                      },
                      icon: Icon(Icons.help_outline_rounded)),
                ],
              ),
            ),
            Container(
              child: Image.asset(
                "assets/images/check.gif",
                width: 200,
                height: 75,
              ),
            ),
            Text(
              "Pembayaran Berhasil!",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Styles.primaryColor,
              ),
            ),
            Text(
              "Rp1.502.000,00",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color: Styles.black,
              ),
            ),
            const Gap(20),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30, bottom: 10, left: 20, right: 20),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: 200,
                      width: AppLayout.getScreenWidth(),
                      decoration: BoxDecoration(
                        color: Styles.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -10,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Styles.white,
                      radius: 35,
                      backgroundImage: AssetImage("assets/images/garuda.png"),
                    ),
                  ),
                ),
                Positioned(
                  top: 65,
                  child: Text("Garuda Indonesia", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Styles.black,

                  )),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 38),
                  margin: EdgeInsets.only(top: 105),
                  child: Row(
                    children: [
                      Text("Total Pembayaran", style: TextStyle(
                        fontSize: 14,
                        color: Styles.black,
                      )),
                      Spacer(),
                      Text("Rp1.500.000,00", style: TextStyle(
                        fontSize: 14,
                        color: Styles.black,
                      )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 38),
                  margin: EdgeInsets.only(top: 125),
                  child: Row(
                    children: [
                      Text("Biaya Layanan", style: TextStyle(
                        fontSize: 14,
                        color: Styles.black,
                      )),
                      Spacer(),
                      Text("Rp2.000,00", style: TextStyle(
                        fontSize: 14,
                        color: Styles.black,
                      )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 38),
                  margin: EdgeInsets.only(top: 145),
                  child: Row(
                    children: [
                      Text("Jumlah Tip", style: TextStyle(
                        fontSize: 14,
                        color: Styles.black,
                      )),
                      Spacer(),
                      Text("Rp0", style: TextStyle(
                        fontSize: 14,
                        color: Styles.black,
                      )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 175, left: AppLayout.getWidth(20), right: AppLayout.getWidth(20)),
                  height: 40,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Styles.darkerPrimary.withOpacity(0.35),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                          child: Image.asset("assets/images/gift.png", width: 30, height: 30,)),
                      const Gap(10),
                      Text("Kamu mendapat 1.000 travelcoin", style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Styles.darkerPrimary,
                      )),
                    ],
                  ),
                ),
              ],
            ),
            const Gap(10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              alignment: Alignment.centerLeft,
              child: Text("Detail Transaki", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Styles.black,
              )),
            ),
            const Gap(10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  DetailTransaksi(kiri: "Tanggal", kanan: "Senin, 12 Juli 2021"),
                  const Gap(8),
                  DetailTransaksi(kiri: "Waktu", kanan: "12:00 - 13:00"),
                  const Gap(8),
                  DetailTransaksi(kiri: "Jakarta", kanan: "Surabaya"),
                  const Gap(8),
                  DetailTransaksi(kiri: "Maskapai", kanan: "Garuda Indonesia"),
                  const Gap(8),
                  DetailTransaksi(kiri: "Kelas", kanan: "Ekonomi"),
                  const Gap(8),
                  DetailTransaksi(kiri: "Jumlah Penumpang", kanan: "1 Dewasa"),
                  const Gap(8),
                  DetailTransaksi(kiri: "Nomor Tiket", kanan: "37109039"),
                  const Gap(8),
                  DetailTransaksi(kiri: "Nomor Penerbangan", kanan: "INA102J21"),
                  const Gap(8),
                  DetailTransaksi(kiri: "Nomor Handphone", kanan: "08123456789"),
                  const Gap(8),
                ],
              ),
            ),
            const Gap(10),
            Container(
              height: 10,
              decoration: BoxDecoration(
              color: Styles.lightGrey
            ),),
            InkWell(
              onTap: () {

              },
              child: Container(
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/cs.png", width: 50, height: 50,),
                    const Gap(15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Butuh Bantuan?", style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Styles.black,
                        )),
                        Text("Hubungi Customer Service Kami, yuk!", style: TextStyle(
                          fontSize: 13,
                          color: Styles.grey,
                        )),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: Styles.black, size: 20,),
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
              decoration: BoxDecoration(
                  color: Styles.lightGrey
              ),),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, TicketDetailModel.routeName );
              },
              child: Container(
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/ticket.png", width: 50, height: 50,),
                    const Gap(15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Lihat Ticket", style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Styles.black,
                        )),
                        Text("Lihat detail ticket anda!", style: TextStyle(
                          fontSize: 13,
                          color: Styles.grey,
                        )),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: Styles.black, size: 20,),
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
              decoration: BoxDecoration(
                  color: Styles.lightGrey
              ),),
            //make done button
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, BottomBar.routeName);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 50,
                width: AppLayout.getScreenWidth(),
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text("Selesai", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Styles.white,
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailTransaksi extends StatelessWidget {
  const DetailTransaksi({
    Key? key, required this.kiri, required this.kanan,
  }) : super(key: key);

  final String kiri;
  final String kanan;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(kiri, style: TextStyle(
          fontSize: 16,
          color: Styles.grey,
          fontWeight: FontWeight.w600,
        )),
        Spacer(),
        Text(kanan, style: TextStyle(
          fontSize: 16,
          color: Styles.black,
          fontWeight: FontWeight.w600,
        )),
      ],
    );
  }
}
