import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lampy/component/custom_snackbar.dart';
import 'package:lampy/config/variable.dart';
import 'package:lampy/controller/validation_controller.dart';
import 'package:lampy/page/auth/register.dart';
import 'package:lampy/page/home/home.dart';

class RegisterController {
  static void handleRegister(BuildContext context, String email, String pass, String conpass){
    if(email == '' || pass == '' || conpass == '') {
      CustomSnackbar.invoke(context, Variable.errorColor, 'All field must be filled!');
      return;
    }
    if(pass.length < 6) {
      CustomSnackbar.invoke(context, Variable.errorColor, 'Password must be more than 6!');
      return;
    } 
    if(pass != conpass) {
      CustomSnackbar.invoke(context, Variable.errorColor, 'Password is not same!');
      return;
    }
    if(!ValidationController.isEmailValid(email)) {
      CustomSnackbar.invoke(context, Variable.errorColor, 'Invalid email format!');
      return;
    }
    registerFirebase(context, email, pass);
  }

  static void registerFirebase(BuildContext context, String email, String pass) {
    FirebaseAuth
    .instance
    .createUserWithEmailAndPassword(
      email: email, 
      password: pass).then((value) => {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()))
      }
    );
  }

  static void goToRegisterPage(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()) 
    );
  }
}