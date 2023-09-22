import 'package:flutter/material.dart';
import 'package:lampy/component/custom_snackbar.dart';
import 'package:lampy/config/variable.dart';
import 'package:lampy/page/auth/register.dart';

class RegisterController {
  static void handleRegister(BuildContext context, String email, String pass, String conpass){
    if(email == '' || pass == '' || conpass == '') CustomSnackbar.invoke(context, Variable.errorColor, 'All field must be filled!');
    if(pass != conpass) CustomSnackbar.invoke(context, Variable.errorColor, 'Password is not same!');
    // CustomSnackbar.invoke(context, Variable.errorColor, 'Testing');
  }

  static void goToRegisterPage(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()) 
    );
  }
}