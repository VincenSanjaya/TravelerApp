import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/components/bottom-navigation.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/homescreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyHome(),
    );
  }
}
