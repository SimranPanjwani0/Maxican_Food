import 'package:ad_exam_1/appRoutes/app_routes.dart';
import 'package:ad_exam_1/controllers/signUp_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  _navigateToLogin({required BuildContext context}) async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Provider.of<UserController>(
      context,
    ).isLogIn
        ? Navigator.pushReplacementNamed(
            context,
            AppRoutes.instance.homePage,
          )
        : Navigator.pushReplacementNamed(
            context,
            AppRoutes.instance.logInPage,
          );
  }

  @override
  Widget build(BuildContext context) {
    _navigateToLogin(context: context);
    return const Scaffold(
      body: Center(
        child: Text(
          "Splash Page",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ), // Replace with your logo asset
      ),
    );
  }
}
