//import 'dart:async';
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:veli_flutter/screen/logo_screen.dart';
import 'package:veli_flutter/screen/signin_screen.dart';
import 'package:veli_flutter/screen/splash_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SigninScreen(),
      //home: SplashScreen(),
    );
  }
}


