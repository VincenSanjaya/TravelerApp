import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:flutter_traveler_app/utils/auth_service.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        color: Styles.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              FirebaseAuth.instance.currentUser!.displayName.toString(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Styles.black,
              ),
            ),
            Text(
              FirebaseAuth.instance.currentUser!.email.toString(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Styles.black,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                AuthService().signOut();
              },
              color: Styles.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              padding: EdgeInsets.all(10),
              child: Text(
                "Logout",
                style: TextStyle(
                    color: Styles.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),

      //make green elevated button
    );
  }
}
