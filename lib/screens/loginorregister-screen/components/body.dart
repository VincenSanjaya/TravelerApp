import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';

class BodyChoose extends StatefulWidget {
  const BodyChoose({Key? key}) : super(key: key);

  @override
  State<BodyChoose> createState() => _BodyChooseState();
}

class _BodyChooseState extends State<BodyChoose> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Container(
          height: AppLayout.getScreenHeight(),
          color: Styles.white,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Container(
                  height: AppLayout.getHeight(370),
                  width: AppLayout.getWidth(370),
                  decoration: BoxDecoration(
                    color: Styles.primaryColor,
                  ),
                ),
                Container(
                  child: Image.asset("assets/images/person.png"),
                ),
              ])
            ],
          ),
        )
      ],
    ));
  }
}
