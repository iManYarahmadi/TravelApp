import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/intro');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff0D6EFD),
      body: Center(
        child: Text(
          "Travenor",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'geometric',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
