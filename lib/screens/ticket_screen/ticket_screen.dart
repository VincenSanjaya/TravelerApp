import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';

import 'components/body.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.white,
      body: BodyTicket(),
    );
  }
}
