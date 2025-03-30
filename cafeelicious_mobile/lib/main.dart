import 'package:cafeelicious_mobile/flex_theme.dart';
import 'package:cafeelicious_mobile/login_screen.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
