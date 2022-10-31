import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:gap/gap.dart';

class ButtonFeature extends StatelessWidget {
  const ButtonFeature({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        children: [
          Spacer(),
          Container(
            alignment: Alignment.center,
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(onPressed: () {}, icon: Icon(FluentSystemIcons.ic_fluent_airplane_filled, color: Styles.white,),)
          ),
          const Gap(18),
          Container(
            alignment: Alignment.center,
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.hotel, color: Styles.white,),)
          ),
          const Gap(18),
          Container(
            alignment: Alignment.center,
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child:  IconButton(onPressed: () {}, icon: Icon(Icons.travel_explore, color: Styles.white,)),
          ),
          const Gap(18),
          Container(
            alignment: Alignment.center,
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child:  IconButton(onPressed: () {}, icon: Icon(Icons.directions_bus, color: Styles.white,)),
          ),
          const Gap(18),
          Container(
            alignment: Alignment.center,
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child:  IconButton(onPressed: () {}, icon: Icon(Icons.train, color: Styles.white,)),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
