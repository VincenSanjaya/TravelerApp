import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:gap/gap.dart';

class TopHotel extends StatelessWidget {
  final Map<String, dynamic> tophotel;
  const TopHotel({Key? key, required this.tophotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.45,
      height: AppLayout.getHeight(330),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/images/${tophotel['image']}"))),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              tophotel['hotel'],
              style: Styles.headlineStyle2.copyWith(color: Styles.black, fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Icon(Icons.star, color: Styles.primaryColor, size: 20,),
                Text(
                  tophotel['ratings'],
                  style: Styles.headlineStyle2.copyWith(color: Styles.black, fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "${tophotel['price']}/malam",
              style: Styles.headlineStyle.copyWith(color: Styles.primaryColor, fontSize: 16, fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}