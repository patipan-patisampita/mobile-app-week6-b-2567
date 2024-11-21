import 'package:flutter/material.dart';
import 'package:week4/view/auth/login.dart';
import 'package:week4/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreens(),
    );
  }
}
