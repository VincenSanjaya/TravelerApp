import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/finish_ticket_screen/finish_ticket_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BodyBookingflight extends StatefulWidget {
  const BodyBookingflight({super.key});

  @override
  State<BodyBookingflight> createState() => _BodyBookingflightState();
}

class _BodyBookingflightState extends State<BodyBookingflight> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xffF2AD54),
              height: 264,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25, left: 15),
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.arrowLeft,
                            color: Color(0xffF3E1AA),
                          ),
                          onPressed: () {
                            
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 15),
                        child: Text(
                          "Pesan Tiket",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 350,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFAF9F8)),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Image.asset(
                            "assets/images/garuda-logo.png",
                            width: 90,
                            height: 50,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "SRC",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xffB0743E),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Semarang",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffB0743E)),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "08.00",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffB0743E)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 3),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(top: 20, left: 10),
                                child: Icon(
                                  Icons.flight_takeoff,
                                  color: Color(0xffB0743E),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffF2AD54)),
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(top: 17, left: 10),
                                width: 70,
                                child: Text(
                                  "1h 30m",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  "DPS",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xffB0743E),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Denpasar",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffB0743E)),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "09.30",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffB0743E)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                color: Color(0xffFAF9F8),
                height: 94,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 67,
                      height: 67,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF2AD54).withOpacity(0.2),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Color(0xffF2AD54),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 10),
                            child: Text(
                              "Masuk Sebagai User",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 3, left: 10),
                            child: Text(
                              "Alamat Email",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff898989)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Rincian Kontak",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            color: Color(0xffFAF9F8),
                          ),
                          width: 350,
                          height: 60,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Nama User",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "Alamat Email",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 195),
                                child: Icon(
                                  Icons.check,
                                  color: Color(0xff4CAF50),
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Color(0xffF8F5F5),
                          ),
                          width: 350,
                          height: 60,
                          child: Container(
                            margin: EdgeInsets.only(left: 3, bottom: 5),
                            child: Row(
                              children: [
                                Container(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Color(0xffF2AD54),
                                      size: 30,
                                    ),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(children: [
                            Container(
                              child: Text(
                                "Rincian Traveler",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 350,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFAF9F8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.person_outline,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: Text(
                                    "Dewasa 1",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Color(0xffBE9256),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      "Fasilitas Penerbangan",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 350,
                                height: 60,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffFAF9F8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(
                                            Icons.luggage_rounded,
                                            color: Colors.black,
                                            size: 30,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          child: Text(
                                            "Bagasi",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 180,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Color(0xffBE9256),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 350,
                                height: 60,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffFAF9F8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons
                                              .airline_seat_recline_extra_rounded,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        child: Text(
                                          "Nomor Kursi",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        child: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: Color(0xffBE9256),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 348,
                                height: 46,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff4C454B),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, FinishTicketScreen.routeName);
                                  },
                                  child: Text(
                                    "Lanjutkan",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
