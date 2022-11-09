import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:gap/gap.dart';
import 'package:flutter_traveler_app/utils/info_app.dart';


class DestinationScreen extends StatelessWidget {
  final Map<String, dynamic> destination;
  const DestinationScreen({Key? key, required this.destination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(160),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
        ],
      ),
      child: Stack(
          children:[
            Container(
              height: AppLayout.getHeight(160),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Styles.primaryColor,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage("${destination['image']}"))),
            ),
            Container (
              padding: const EdgeInsets.only(top: 125, left: 20),
              child: Text(
                destination['place'],
                style: Styles.headlineStyle2.copyWith(color: Styles.white, fontSize: 20, fontWeight: FontWeight.w800),
              ),
            )

          ]
      ),
    );
  }
}
