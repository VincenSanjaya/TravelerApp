import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/login-screen/login-screen.dart';
import 'package:flutter_traveler_app/screens/loginorregister-screen/choose-screen.dart';
import 'package:flutter_traveler_app/screens/onboarding-screen/onboarding-screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
  ChooseScreen.routeName: (context) => ChooseScreen(),
  LoginScreen.routeName: (context) => LoginScreen()
};