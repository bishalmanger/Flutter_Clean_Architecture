import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/core/resources/color_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryBackgroundColor,
      body: const Image(image: AssetImage('assets/images/cycle.png'),),
    );
  }
}
