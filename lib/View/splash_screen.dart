import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          height: 100,
          width: 100,
          "https://lottie.host/708d9a4a-2a46-40d8-bb99-6c253cedf64f/9yD6H1wGpV.json",
        ),
      ),
    );
  }
}
