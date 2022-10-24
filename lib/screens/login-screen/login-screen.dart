import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/login-screen/components/body.dart';


class LoginScreen extends StatefulWidget {
  static String routeName = "/loginscreen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: BodyLogin(),
      ),
    );
  }
}
