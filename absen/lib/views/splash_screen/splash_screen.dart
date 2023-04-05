import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../login_screen/view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  // static const String routeName = 'splash-screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen(),
          ));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Center(
          child: Container(
            child: Wrap(
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/image_spalsh_screen.png",
                      height: 150,
                      width: 287,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 44,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
