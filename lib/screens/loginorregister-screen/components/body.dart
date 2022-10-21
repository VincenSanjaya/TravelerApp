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
    return Scaffold(
        body: Column(
      children: [
        Container(
          color: Styles.white,
          padding: EdgeInsets.only(left: 10, right: 10, top: 50, bottom: 75),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                height: AppLayout.getHeight(370),
                width: AppLayout.getWidth(370),
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset("assets/images/person.png"),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              "Cari Lebih",
              style: TextStyle(
                  color: Styles.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              "Bersama Traveler",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Styles.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 211,
              child: Text(
                "Temukan berbagai keindahan Indonesia bersama Traveler menjadi lebih mudah dan menyenangkan",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Styles.black.withOpacity(0.5),
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(
              height: 65,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 280,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Styles.white,
                      border: Border.all(color: Styles.darkerPrimary),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Stack(children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                          width: 140,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Styles.darkerPrimary,
                            border: Border.all(color: Styles.darkerPrimary),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        child: TextButton(
                          onPressed: () {

                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Styles.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(right: 30),
                          width: 280,
                          height: 50,
                        child: TextButton(
                          onPressed: () {

                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Styles.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ]))
              ],
            ),
          ],
        )
      ],
    ));
  }
}
