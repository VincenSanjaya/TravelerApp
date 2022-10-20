import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';

class OnBoard {
  final String image, title, subtitle, description;

  OnBoard(
      {required this.image,
        required this.title,
        required this.subtitle,
        required this.description});
}

final List<OnBoard> demo_data = [
  OnBoard(
      image: "assets/images/image-1.png",
      title: "Hi! Travelers",
      subtitle: "Selamat Datang",
      description: ""),
  OnBoard(
      image: "assets/images/image-2.png",
      title: "Jelajahi",
      subtitle: "INDONESIA",
      description: ""),
  OnBoard(
      image: "assets/images/image-3.png",
      title: "Dalam Genggaman Anda",
      subtitle: "",
      description: ""),
  OnBoard(
      image: "assets/images/image-4.png",
      title: "Bersama",
      subtitle: "Traveler",
      description: "good trip good mood"),
];

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.description,
  }) : super(key: key);

  final String image, title, subtitle, description;

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Stack(
              children: <Widget>[
                Container(
                  child: Image.asset(image, width: 844, fit: BoxFit.fitHeight),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: AppLayout.getWidth(18),
                      top: AppLayout.getHeight(170)),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 36,
                        color: Styles.white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Container(
                  margin:
                  EdgeInsets.only(left: 80, top: AppLayout.getHeight(205)),
                  child: Text(
                    subtitle,
                    style: TextStyle(
                        fontSize: 32,
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Container(
                  margin:
                  EdgeInsets.only(left: 215, top: AppLayout.getHeight(225)),
                  child: Text(
                    description,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                        color: Styles.white),
                  ),
                )
                // Container(
                //   margin: EdgeInsets.only(
                //       left: AppLayout.getWidth(18),
                //       right: AppLayout.getWidth(18),
                //       top: AppLayout.getHeight(740)),
                //   child: Row(
                //     children: [
                //       Text(
                //         "Skip",
                //         style: TextStyle(
                //             color: Styles.white,
                //             fontSize: 18,
                //             fontWeight: FontWeight.w800),
                //       ),
                //       Spacer(),
                //       Text(
                //         "Next",
                //         style: TextStyle(
                //             color: Styles.white,
                //             fontSize: 18,
                //             fontWeight: FontWeight.w800),
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    ]);
  }
}
