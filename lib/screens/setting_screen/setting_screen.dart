import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/setting_screen/components/body.dart';
import 'package:flutter_traveler_app/utils/constant.dart';

class SettingScreen extends StatefulWidget {
  static String routeName = "/settingscreen";
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Setting", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
        elevation: 0,
        backgroundColor: Styles.primaryColor,
      ),
      backgroundColor: Styles.lightGrey,
      body: BodySetting(),
    );
  }
}
