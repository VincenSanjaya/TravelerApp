import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/components/bottom-navigation.dart';
import 'package:flutter_traveler_app/screens/booking-flight-screen/booking-flight-screen.dart';
import 'package:flutter_traveler_app/screens/finish_ticket_screen/components/ticket_detail_model.dart';
import 'package:flutter_traveler_app/screens/finish_ticket_screen/finish_ticket_screen.dart';
import 'package:flutter_traveler_app/screens/flight-payment-screen/flight_payment_screen.dart';
import 'package:flutter_traveler_app/screens/flight-ticket-screen/flight-ticket-screen.dart';
import 'package:flutter_traveler_app/screens/home-screen/home-screen.dart';
import 'package:flutter_traveler_app/screens/hotel-screen/hotel-screen.dart';
import 'package:flutter_traveler_app/screens/login-screen/login-screen.dart';
import 'package:flutter_traveler_app/screens/loginorregister-screen/choose-screen.dart';
import 'package:flutter_traveler_app/screens/notification-screen/notification-screen.dart';
import 'package:flutter_traveler_app/screens/onboarding-screen/onboarding-screen.dart';
import 'package:flutter_traveler_app/screens/register-screen/register-screen.dart';
import 'package:flutter_traveler_app/screens/setting_screen/setting_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
  ChooseScreen.routeName: (context) => ChooseScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  BottomBar.routeName: (context) => BottomBar(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  NotificationScreen.routeName: (context) => NotificationScreen(),
  FlightTicketScreen.routeName: (context) => FlightTicketScreen(),
  BookingFlightScreen.routeName: (context) => BookingFlightScreen(),
  HotelScreen.routeName: (context) => HotelScreen(),
  SettingScreen.routeName: (context) => SettingScreen(),
  FinishTicketScreen.routeName: (context) => FinishTicketScreen(),
  TicketDetailModel.routeName: (context) => TicketDetailModel(),
  FlightPaymentScreen.routeName: (context) => FlightPaymentScreen(),
};