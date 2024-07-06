import 'package:ad_exam_1/app.dart';
import 'package:ad_exam_1/controllers/signUp_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
