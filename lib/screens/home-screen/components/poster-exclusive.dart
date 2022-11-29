import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:gap/gap.dart';

class PosterExclusive extends StatelessWidget {
  const PosterExclusive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Text("Event Mendatang", style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  color: Styles.black,
                ),),
              ),
              Spacer(),
              Container(
                child: Text("See More", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Styles.primaryColor,
                ),),
              ),
            ],
          ),
          const Gap(20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              ),
            child: Image.asset("assets/images/poster-exclusive.png"),
            ),

        ],
      ),
    );
  }
}
