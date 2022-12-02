import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/finish_ticket_screen/finish_ticket_screen.dart';
import 'package:flutter_traveler_app/screens/flight-payment-screen/flight_payment_screen.dart';
import 'package:flutter_traveler_app/screens/home-screen/home-screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../../../utils/utils.dart';

class BodyFlightPayment extends StatefulWidget {
  const BodyFlightPayment({super.key});

  @override
  State<BodyFlightPayment> createState() => _BodyFlightPaymentState();
}

class _BodyFlightPaymentState extends State<BodyFlightPayment> {
  List<Map<String, dynamic>> _paymentMethod = [
    {
      'name': 'Gopay',
      'image': 'assets/images/gopay_logo.png',
    },
    {
      'name': 'Indomaret',
      'image': 'assets/images/Indomaret.png',
    },
    {
      'name': 'Alfamart',
      'image': 'assets/images/Alfamart.png',
    },
    {
      'name': 'OVO',
      'image': 'assets/images/ovo.png',
    },
    {
      'name': 'Dana',
      'image': 'assets/images/dana.png',
    },
    {
      'name': 'LinkAja',
      'image': 'assets/images/linkaja.png',
    },
  ];



  int _selectedPayment = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Color(0xffB0743E),
                  height: 300,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 25, left: 20),
                            child: IconButton(
                              icon: Icon(Icons.arrow_back),
                              color: Color(0xffF3E1AA),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 25, left: 20),
                            child: Text(
                              "Konfirmasi Pembayaran",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Color(0xffF2AD54),
                      borderRadius: BorderRadius.circular(20)),
                  width: 400,
                  height: 200,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 20),
                            child: Icon(Icons.flight_rounded,
                                color: Colors.white, size: 30),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        "SRC",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: pointerCircle()),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        "DPS",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                        child: Text(
                                      "5 Oktober 2022",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.center,
                                    ))
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 25, top: 20),
                            child: FaIcon(
                              FontAwesomeIcons.locationDot,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 250, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Color(0xffFEC275),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      )),
                  width: 400,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: SlideCountdown(
                          duration: Duration(days: 1),
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffFEC275),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onDone: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BodyFlightPayment())),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 300, left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Color(0xffEAEAEA),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      )),
                  width: 400,
                  height: 50,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Image.asset(
                            "assets/images/gopay_logo.png",
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          child: TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Column(
                                      children: [
                                        // create gridview for _paymentMethod list that can be selected
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          child: GridView.builder(
                                            shrinkWrap: true,
                                            itemCount: _paymentMethod.length,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              crossAxisSpacing: 10,
                                              mainAxisSpacing: 10,
                                            ),
                                            itemBuilder: (context, index) {
                                              return GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _selectedPayment = index;
                                                  });
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: _selectedPayment ==
                                                            index
                                                        ? Color(0xffFEC275)
                                                        : Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(8),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: [
                                                      Image.asset(
                                                        _paymentMethod[index]
                                                            ['image'],
                                                        width: 50,
                                                        height: 50,
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        _paymentMethod[index]
                                                            ['name'],
                                                        style: TextStyle(
                                                          color: _selectedPayment ==
                                                                  index
                                                              ? Colors.white
                                                              : Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Container(
                                          width: 300,
                                          height: 50,
                                          margin: EdgeInsets.only(top: 20),
                                          decoration: BoxDecoration(
                                            color: Color(0xff4C454B),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: TextButton(onPressed: () {}, child: Text("Pilih",style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),),),
                                        )
                                      ],
                                    );
                                  });
                            },
                            child: Text(
                              "ganti",
                              style: TextStyle(
                                color: Color(0xffB0743E),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ]),
                )
              ],
            ),
            Container(
              width: 350,
              height: 150,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                color: Color(0xffEAEAEA),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 20),
                          child: Text(
                            "Total Pembayaran",
                            style: TextStyle(
                              color: Color(0xff898989),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 15, top: 20),
                          child: Text(
                            "Rp. 1.500.000",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(24),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 6).floor(),
                              (index) => SizedBox(
                                    width: 3,
                                    height: 2,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Color(0xff898989)),
                                    ),
                                  )),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 330,
                    height: 40,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Color(0xff4C454B),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, FinishTicketScreen.routeName) ;
                      },
                      child: Text(
                        "Bayar Sekarang",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff4C454B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
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

  Widget pointerCircle() {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 47,
          height: 2,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
          ),
        ),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
