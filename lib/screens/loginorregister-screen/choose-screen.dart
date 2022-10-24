import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/loginorregister-screen/components/body.dart';

class ChooseScreen extends StatefulWidget {
  static String routeName = "/choose";
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyChoose(),
    );
  }
}
