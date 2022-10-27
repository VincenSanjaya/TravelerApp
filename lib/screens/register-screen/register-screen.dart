import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/register-screen/components/body.dart';

class RegisterScren extends StatefulWidget {
  const RegisterScren({Key? key}) : super(key: key);

  @override
  State<RegisterScren> createState() => _RegisterScrenState();
}

class _RegisterScrenState extends State<RegisterScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: BodyRegister(),
      ),
    );
  }
}
