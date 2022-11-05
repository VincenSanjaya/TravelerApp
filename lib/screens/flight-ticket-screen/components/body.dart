import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/flight-ticket-screen/components/ticketbox.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';

class BodyFlightTicket extends StatefulWidget {
  const BodyFlightTicket({Key? key}) : super(key: key);

  @override
  State<BodyFlightTicket> createState() => _BodyFlightTicketState();
}

class _BodyFlightTicketState extends State<BodyFlightTicket> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: 300,
              width: AppLayout.getScreenWidth(),
              decoration: BoxDecoration(color: Styles.primaryColor),
            ),
            Container(
              margin: EdgeInsets.only(top: 70, left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "Pesan Tiket\nPesawatmu Sekarang",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  color: Styles.white,
                ),
              ),
            ),
            TicketBox()
          ],
        ),
      ),
    );
  }
}


