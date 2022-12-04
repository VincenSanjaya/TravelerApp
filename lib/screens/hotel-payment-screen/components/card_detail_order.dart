

import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:gap/gap.dart';

import '../../../utils/constant.dart';

class CardDetailOder extends StatelessWidget {
  const CardDetailOder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: AppLayout.getScreenWidth(),
        height: AppLayout.getHeight(170),
        decoration: BoxDecoration(
          color: Styles.white,
        ),
        margin: EdgeInsets.only(top: AppLayout.getHeight(80)),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: AppLayout.getWidth(5)),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/kempinski_bali.jpg",
                    width: 90,
                    height: 90,
                  ),
                  const Gap(10),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The Apruva Kempinski Bali",
                          style: TextStyle(
                              color: Styles.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                        const Gap(3),
                        Text(
                          "Jl. Raya Nusa Dua Selatan,",
                          style: TextStyle(
                              color: Styles.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                        const Gap(3),
                        Text(
                          "1x President Suite (Breakfeat & Dinner)",
                          style: TextStyle(
                              color: Styles.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            const Gap(10),
            Divider(
              height: 1,
              color: Styles.grey,
            ),
            const Gap(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "check-in", style:
                        TextStyle(
                            color: Styles.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),
                        ),
                        Text(
                          "20 Des 2022", style:
                        TextStyle(
                            color: Styles.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "check-out", style:
                        TextStyle(
                            color: Styles.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),
                        ),
                        Text(
                          "2 Jan 2023", style:
                        TextStyle(
                            color: Styles.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tamu", style:
                        TextStyle(
                            color: Styles.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),
                        ),
                        Text(
                          "2 Orang", style:
                        TextStyle(
                            color: Styles.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}