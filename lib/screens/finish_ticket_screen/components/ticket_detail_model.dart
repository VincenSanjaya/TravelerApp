import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:gap/gap.dart';

class TicketDetailModel extends StatelessWidget {
  static String routeName = "/ticketdetailmodel";
  const TicketDetailModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios_new_rounded,
                          color: Styles.white),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Text(
                    "Detail Ticket",
                    style: TextStyle(
                        fontSize: 20,
                        color: Styles.white,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Styles.white,
                      ),
                      onPressed: () {})
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    decoration: BoxDecoration(
                        color: Styles.white,
                        borderRadius: BorderRadius.circular(15)),
                    height: 670,
                    child: Column(children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/garuda.png",
                            width: 45,
                            height: 45,
                          ),
                          const Gap(10),
                          Text(
                            "Garuda Indonesia",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Divider(
                        color: Styles.brown,
                        thickness: 1,
                      ),
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dari",
                            style: TextStyle(
                                fontSize: 11,
                                color: Styles.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            CupertinoIcons.airplane,
                            size: 20,
                            color: Styles.grey,
                          ),
                          Text(
                            "Ke",
                            style: TextStyle(
                                fontSize: 11,
                                color: Styles.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "JKT",
                            style: TextStyle(
                                fontSize: 18,
                                color: Styles.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "SBY",
                            style: TextStyle(
                                fontSize: 18,
                                color: Styles.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jakarta Soekarno Hatta\n12.00 WIB\nTerminal 1",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 10,
                                color: Styles.darkGrey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Surabaya Juanda\n13.00 WIB\nTerminal 1",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 10,
                                color: Styles.darkGrey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Gap(15),
                      Divider(
                        color: Styles.brown,
                        thickness: 1,
                      ),
                      const Gap(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gate",
                            style: TextStyle(
                                fontSize: 11,
                                color: Styles.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Seat",
                            style: TextStyle(
                                fontSize: 11,
                                color: Styles.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "A1",
                            style: TextStyle(
                                fontSize: 18,
                                color: Styles.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "1A",
                            style: TextStyle(
                                fontSize: 18,
                                color: Styles.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Gap(15),
                      Divider(
                        color: Styles.brown,
                        thickness: 1,
                      ),
                      const Gap(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tanggal",
                            style: TextStyle(
                                fontSize: 11,
                                color: Styles.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Bagasi",
                            style: TextStyle(
                                fontSize: 11,
                                color: Styles.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "12/12/2021",
                            style: TextStyle(
                                fontSize: 18,
                                color: Styles.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "20KG",
                            style: TextStyle(
                                fontSize: 18,
                                color: Styles.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Gap(15),
                      Divider(
                        color: Styles.brown,
                        thickness: 1,
                      ),
                      const Gap(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nama",
                            style: TextStyle(
                                fontSize: 11,
                                color: Styles.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Class",
                            style: TextStyle(
                                fontSize: 11,
                                color: Styles.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Gap(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Vincencio",
                            style: TextStyle(
                                fontSize: 18,
                                color: Styles.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Economy",
                            style: TextStyle(
                                fontSize: 18,
                                color: Styles.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Gap(15),
                      Divider(
                        color: Styles.brown,
                        thickness: 1,
                      ),
                      const Gap(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Kode Ticket",
                            style: TextStyle(
                                fontSize: 18,
                                color: Styles.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "INA102J21",
                            style: TextStyle(
                                fontSize: 18,
                                color: Styles.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Gap(15),
                      Image.asset("assets/images/barcode.png"),
                    ]),
                  ),
                  Positioned(
                    top: AppLayout.getHeight(455),
                    left: AppLayout.getWidth(19),
                    child: SizedBox(
                      height: 25,
                      width: 15,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Styles.primaryColor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                      ),
                    ),
                  ),
                  Positioned(
                    top: AppLayout.getHeight(455),
                    left: AppLayout.getWidth(161),
                    child: SizedBox(
                      height: 25,
                      width: 15,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Styles.primaryColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                      ),
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
