import 'package:flutter/material.dart';
import 'package:ih_customer/screens/login_screen.dart';
import 'package:ih_customer/screens/program/event_details.dart';

import 'screens/change_pass_screen.dart';
import 'screens/forgot_pass_screen.dart';
import 'screens/our_consultants.dart';
import 'screens/program/event_screen.dart';
import 'screens/program/infinite_health.dart';
import 'screens/program/program_screen.dart';
import 'screens/questionnaire_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/verification_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INFINITE HEALTH',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: EventDetails(),
    );
  }
}
