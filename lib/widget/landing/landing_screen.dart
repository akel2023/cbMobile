// ignore_for_file: empty_catches, unused_local_variable, prefer_const_constructors, avoid_print

import 'package:cbmobile/widget/dashboard/dashboard.dart';
import 'package:cbmobile/widget/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getSettings(context),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.hasData) {
          return Dashboard();
        } else {
          return Scaffold(
            body: Center(
              child: SplashScreen(),
            ),
          );
        }
      },
    );
  }
}

Future<bool> getSettings(context) async {
  return false;
}
