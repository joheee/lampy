import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lampy/page/auth/login.dart';
import 'package:lampy/page/home/home.dart';

class AuthController {
  static void guestMiddleware(BuildContext context){
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => const LoginPage())
        );
      }
    });
  }

  static void authMiddleware(BuildContext context){
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => const HomePage())
        );
      }
    });
  }

  static void handleLogout(BuildContext context) {
    FirebaseAuth
    .instance
    .signOut()
    .then((value) => {
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => const LoginPage())
      ) 
    });
  }
}