import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/notification-screen/components/body.dart';
import 'package:flutter_traveler_app/utils/constant.dart';

class NotificationScreen extends StatefulWidget {
  static String routeName = "/notification";
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,

        title: const Text("Notification"),
      ),
      body: const BodyNotification(),
    );
  }
}
