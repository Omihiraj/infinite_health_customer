import 'package:flutter/material.dart';
import 'package:ih_customer/screens/appointments/appointmets_screen.dart';
import 'package:ih_customer/screens/home/before_login.dart';
import 'package:ih_customer/screens/market/market_place.dart';
import 'package:ih_customer/screens/payment/cart_screen.dart';
import 'package:ih_customer/screens/profile/profile_screen.dart';

import '../widgets/custom_nav.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final screens = [
    const BeforeLogin(),
    const AppointmentScreen(),
    const MarketPlace(),
    const CartScreen(),
    const ProfileScreen()
  ];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: CustomNavBar(
        index: index,
        onChangedTab: onChangedTab,
      ),
    );
  }

  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }
}
