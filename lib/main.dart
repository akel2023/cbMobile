// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cbmobile/providers/auth_provider.dart';
import 'package:cbmobile/widget/barcodescreen/barcode_screen.dart';
import 'package:cbmobile/widget/dashboard/dashboard.dart';
import 'package:cbmobile/widget/login/login.dart';
import 'package:cbmobile/widget/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Çabuk Mama Yönetim',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 82, 52, 134)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Çabuk Mama'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/splash",
        title: "Çabuk Mama Yönetim",
        routes: {
          "/splash": (context) => SplashScreen(),
          "/dashboard": (context) => Dashboard(),
          "/login": (context) => Login(),
          "/barcode": (context) => BarcodeScreen(),
        },
      ),
    );
  }
}
