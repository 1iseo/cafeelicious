import 'package:flutter/material.dart';
import 'dart:async'; 
import 'login_screen.dart'; 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    // Timer untuk navigasi ke halaman login setelah 3 detik
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEBE5), 
      body: Center(
        child: Container(
          width: 240,
          height: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            'assets/cafeelicious.png', 
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}