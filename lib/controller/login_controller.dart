import 'package:firebase_auth/firebase_auth.dart';
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
      // ignore: use_build_context_synchronously
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