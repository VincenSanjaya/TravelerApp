import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_traveler_app/screens/home-screen/home-screen.dart';
import 'package:flutter_traveler_app/screens/login-screen/components/body.dart';
import 'package:flutter_traveler_app/screens/login-screen/login-screen.dart';
import 'package:flutter_traveler_app/screens/onboarding-screen/onboarding-screen.dart';
import 'package:flutter_traveler_app/screens/profile-screen/profile-screen.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/routes.dart';

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
        primaryColor: Styles.primaryColor,
      ),
      home: const OnBoardingScreen(),
      initialRoute: OnBoardingScreen.routeName,
      routes: routes,

    );
  }
}
