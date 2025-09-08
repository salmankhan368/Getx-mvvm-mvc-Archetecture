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
    return Center(
      child: Container(
        color: Colors.deepPurple[300],
        child: Lottie.network(
          "https://lottie.host/3a934c74-e2dc-4ec2-b158-dff32c0f086d/TesuLhlbjR.json",
        ),
      ),
    );
  }
}
