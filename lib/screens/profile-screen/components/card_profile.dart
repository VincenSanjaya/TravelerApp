import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:gap/gap.dart';

import '../../../utils/constant.dart';

class CardProfile extends StatelessWidget {

  const CardProfile({
    Key? key, required this.judul, required this.icon, required this.desc,
  }) : super(key: key);

  final Icon icon;
  final String judul;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding - 15),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: InkWell(
            splashColor: Styles.primaryColor.withAlpha(70),
            onTap: () {
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    icon.icon,
                    color: Styles.primaryColor,
                    size: 25,
                  ),
                  const Gap(20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        judul,
                        style: Styles.headlineStyle2.copyWith(
                            color: Styles.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        desc,
                        style: Styles.headlineStyle3.copyWith(
                            color: Styles.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Styles.darkerPrimary,
                    size: 20,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
