import 'package:flutter/material.dart';

import 'package:ih_customer/screens/login_screen.dart';
import 'package:ih_customer/screens/payment/cart_screen.dart';
import 'package:ih_customer/screens/program/event_details.dart';

import 'screens/change_pass_screen.dart';
import 'screens/chat/about_us.dart';
import 'screens/chat/chat.dart';
import 'screens/chat/faq.dart';
import 'screens/chat/menu_screen.dart';
import 'screens/chat/terms_screen.dart';
import 'screens/consultants/consultants.dart';
import 'screens/forgot_pass_screen.dart';
import 'screens/home/before_login.dart';
import 'screens/market/market_place.dart';
import 'screens/market/market_place_category.dart';
import 'screens/market/product_screen.dart';
import 'screens/our_consultants.dart';
import 'screens/profile/change_password.dart';
import 'screens/profile/edit_profile.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/profile/profile_settings.dart';
import 'screens/profile/progress_report.dart';
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
        home: BeforeLogin());
  }
}
