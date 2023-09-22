import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lampy/component/custom_snackbar.dart';
import 'package:lampy/config/variable.dart';
import 'package:lampy/page/auth/login.dart';
import 'package:lampy/page/home/home.dart';

class LoginController {
  static void handleLogin(BuildContext context, String email, String pass) async {
    try {
      await FirebaseAuth
      .instance
      .signInWithEmailAndPassword(email: email, password: pass)
      .then((value) => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()) 
        )
      });
    } on FirebaseAuthException {
      CustomSnackbar.invoke(context, Variable.errorColor, 'Invalid credentials!');
    }
  }

  static void goToLoginPage(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()) 
    );
  }
}