import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthController {
  static checkCurrentUser(BuildContext context){
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        print('ada user');
      } else {
        print('gaada user');
      }
    });
  }
}