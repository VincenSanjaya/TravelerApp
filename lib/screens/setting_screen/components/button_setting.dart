import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';

class ButtonSetting extends StatelessWidget {
  const ButtonSetting({
    Key? key, required this.title, required this.icon, required this.onTap,
  }) : super(key: key);

  final String title;
  final Icon icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 55,
      width: double.infinity,
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              child: icon,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Text(title, style: Styles.headlineStyle2.copyWith(
                  color: Styles.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),),
            ),
            Spacer(),
            Container(
              child: Icon(
                Icons.arrow_forward_ios,
                color: Styles.primaryColor,
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}