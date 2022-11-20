import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/profile-screen/components/body.dart';

import 'package:flutter_traveler_app/utils/constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text("My Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FluentSystemIcons.ic_fluent_settings_regular),
                ),
              ],
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Styles.primaryColor,
      ),
      body: BodyProfile(),
    );
  }
}
