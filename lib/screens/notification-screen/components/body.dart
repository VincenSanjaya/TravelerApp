import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:gap/gap.dart';

class BodyNotification extends StatefulWidget {
  const BodyNotification({Key? key}) : super(key: key);

  @override
  State<BodyNotification> createState() => _BodyNotificationState();
}

class _BodyNotificationState extends State<BodyNotification> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: Text("Notifikasi", style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: Styles.black,
            ),),
          ),
          const Gap(18),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text("Tidak ada notifikasi", style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Styles.black,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
