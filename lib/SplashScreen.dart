import 'dart:async';
import 'package:flutter/material.dart';
import 'LoginScreen.dart'; 

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Container(
            color: Colors.white, 
          ),
          const Align(
            alignment: Alignment.center,
            child: Image(
              height: 250,
              width: 250,
              image: AssetImage('assets/logo.png'),
            ),
          ),
        ],
      ),
    );
  }
}