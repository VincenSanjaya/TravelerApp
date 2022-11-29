import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_traveler_app/screens/flight-payment-screen/flight-payment-screen.dart';
import 'package:flutter_traveler_app/screens/home-screen/home-screen.dart';
import 'package:flutter_traveler_app/screens/login-screen/components/body.dart';
import 'package:flutter_traveler_app/screens/login-screen/login-screen.dart';
import 'package:flutter_traveler_app/screens/onboarding-screen/onboarding-screen.dart';
import 'package:flutter_traveler_app/screens/profile-screen/profile-screen.dart';
import 'package:flutter_traveler_app/utils/auth_service.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Nuninto',
          primaryColor: Styles.primaryColor,
        ),
        home: OnBoardingScreen(),
        initialRoute: OnBoardingScreen.routeName,
        routes: routes,
      ),
    );
  }
}
