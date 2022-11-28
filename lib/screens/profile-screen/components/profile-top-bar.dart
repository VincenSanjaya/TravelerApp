

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:gap/gap.dart';

import '../../../utils/constant.dart';

class ProfileTopBar extends StatelessWidget {
  const ProfileTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25,),
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(kDefaultPadding * 2),
          bottomRight: Radius.circular(kDefaultPadding * 2),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: const AssetImage("assets/images/profile.png"),
              ),
              const Gap(15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(user.email!, style: Styles.headlineStyle2.copyWith(color: Styles.white, fontSize: 22, fontWeight: FontWeight.w700),),
                  Text("1,000,000 Points", style: Styles.headlineStyle3.copyWith(color: Styles.white, fontSize: 18, fontWeight: FontWeight.w600),),
                  Text("0 Post", style: Styles.headlineStyle3.copyWith(color: Styles.white, fontSize: 18, fontWeight: FontWeight.w600),),
                ],
              )

            ],
          ),
          const Gap(15),
          Container(
            height: 45,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Lihat Profil Saya",
                style: Styles.headlineStyle3.copyWith(color: Styles.primaryColor, fontSize: 20, fontWeight: FontWeight.w600),),
              style: ElevatedButton.styleFrom(
                elevation: 2,
                backgroundColor: Styles.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}