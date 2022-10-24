import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_traveler_app/screens/onboarding-screen/onboarding-screen.dart';
import 'package:flutter_traveler_app/screens/register-screen/register-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Nuninto',
        primarySwatch: Colors.blue,
      ),
      home: RegisterScren(),
    );
  }
}
