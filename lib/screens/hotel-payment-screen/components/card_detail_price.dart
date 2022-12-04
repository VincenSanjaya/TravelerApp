import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:gap/gap.dart';

class CardDetailPrice extends StatelessWidget {
  const CardDetailPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: AppLayout.getHeight(20)),
      width: AppLayout.getScreenWidth(),
      decoration: BoxDecoration(
        color: Styles.white,
      ),
      child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric( horizontal: AppLayout.getWidth(10), vertical: AppLayout.getHeight(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Biaya 14 Malam",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Styles.black,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Rp. 61.740.000",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Styles.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Styles.grey,
              thickness: 1,
            ),
            Container(
              margin: EdgeInsets.symmetric( horizontal: AppLayout.getWidth(10), vertical: AppLayout.getHeight(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Biaya PPN 10%",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Styles.black,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Rp. 6.174.000",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Styles.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Styles.grey,
              thickness: 1,
            ),
            Container(
              margin: EdgeInsets.symmetric( horizontal: AppLayout.getWidth(10), vertical: AppLayout.getHeight(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Total Biaya",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Styles.black,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Rp. 67.914.000",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Styles.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}