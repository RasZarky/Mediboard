import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mediboard/routes/authentication/signIn.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () async {

      Navigator.pushReplacement(context,
          PageTransition(type: PageTransitionType.leftToRight, child: const SignIn())
      );

    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 65.0,
          child: Image(
            image: AssetImage('assets/Logo.png'),
          ),
        ),
      ),
    );
  }
}
