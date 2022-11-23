import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/ticket_screen/components/first_page.dart';
import 'package:flutter_traveler_app/screens/ticket_screen/components/second_page.dart';

import '../../../utils/constant.dart';
import 'third_page.dart';

class BodyTicket extends StatefulWidget {
  @override
  _BodyTicketState createState() => _BodyTicketState();
}

class _BodyTicketState extends State<BodyTicket> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 15, top: 80, bottom: 10),
              child: Text(
                "Tiket",
                style: TextStyle(
                  fontSize: 38,
                    color: Styles.black, fontWeight: FontWeight.w800),
              ),
              color: Styles.white,
            ),
            TabBar(
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Styles.primaryColor,
                    width: 1.5,
                  ),
                ),
                color: Styles.white,
              ),
              unselectedLabelColor: Styles.black,
              labelColor: Styles.primaryColor,
              tabs: [
                Tab(
                  child: Text(
                    "Perjalanan",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Tab(
                  child: Text("Sudah Dipesan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text("Riwayat",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  FirstPage(),
                  SecondPage(),
                  ThirdPage()
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}