import 'package:ad_exam_1/pages/homePage/home_page.dart';
import 'package:ad_exam_1/pages/logInPage/logIn_page.dart';
import 'package:ad_exam_1/pages/signUpPage/signUp_page.dart';
import 'package:ad_exam_1/pages/splashPage/splash_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  String splashPage = '/';
  String logInPage = 'logIn';
  String signUpPage = 'signUp';
  String homePage = 'home';

  Map<String, WidgetBuilder> allRoutes = {
    '/': (context) => const SplashPage(),
    'logIn': (context) => LoginPage(),
    'signUp': (context) => SignUpPage(),
    'home': (context) => const HomePage(),
  };

  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();
}
