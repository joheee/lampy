import 'package:flutter/material.dart';
import 'package:lampy/page/auth/login.dart';
import 'package:lampy/page/auth/register.dart';
import 'package:lampy/page/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lampy the Smart Lamp',
      home: RegisterPage()
    );
  }
}