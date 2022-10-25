import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/body.dart';
import 'package:flutter_traveler_app/screens/profile-screen/components/body.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyProfile(),
    );
  }
}
