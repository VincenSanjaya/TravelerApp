import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/register-screen/components/body.dart';

class RegisterScreen extends StatefulWidget {
  static String routeName = "/registerscreen";
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
