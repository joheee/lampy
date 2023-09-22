import 'package:flutter/material.dart';
import 'package:lampy/page/auth/login.dart';
import 'package:lampy/page/home/home.dart';

class LoginController {
  static void handleLogin(BuildContext context, String email, String pass){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()) 
    );
  }

  static void goToLoginPage(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()) 
    );
  }
}