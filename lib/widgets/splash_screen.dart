import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:luz_verde_oficial/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: content(),
    );
  }
}

Widget content() {
  return Center(
    child: Lottie.asset("assets/animations/aniki_hamster.json"),
  );
}
