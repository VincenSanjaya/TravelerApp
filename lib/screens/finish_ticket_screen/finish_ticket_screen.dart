import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';

import 'components/body.dart';

class FinishTicketScreen extends StatefulWidget {
  static String routeName = "/completescreen";
  const FinishTicketScreen({Key? key}) : super(key: key);

  @override
  State<FinishTicketScreen> createState() => _FinishTicketScreenState();
}

class _FinishTicketScreenState extends State<FinishTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BodyFinish(),
    );
  }
}
