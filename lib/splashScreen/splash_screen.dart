import 'dart:async';

import 'package:flutter/material.dart';

import '../mainScreens/main_screen.dart';
import '../authentication/login_screen.dart';
import '../authentication/signup_screen.dart';

class MySplashScreen extends StatefulWidget {
  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {
      // send user to main screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (c) => LoginScreen(),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo1.png'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Uber & inDriver Clone App',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
