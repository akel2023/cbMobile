// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, avoid_unnecessary_containers, unused_local_variable

import 'dart:async';

import 'package:cbmobile/providers/auth_provider.dart';
import 'package:cbmobile/widget/dashboard/dashboard.dart';
import 'package:cbmobile/widget/login/login.dart';
import 'package:cbmobile/widget/splashscreen/splash_viewer.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final tempAuth = Provider.of<AuthProvider>(context, listen: true);
    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: checkAuth(context),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                if (tempAuth.isAuthorized == true) {
                  return Dashboard();
                } else {
                  return Login();
                }

              default:
                return SplashViewer();
            }
          },
        ),
      ),
    );
  }

  Future checkAuth(BuildContext context) async {
    final tempAuth = Provider.of<AuthProvider>(context, listen: true);

    await Future.delayed(const Duration(seconds: 5), () {});
    await tempAuth.tryLogin();
  }
}
