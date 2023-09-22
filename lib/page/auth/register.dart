import 'package:flutter/material.dart';
import 'package:lampy/component/custom_snackbar.dart';
import 'package:lampy/page/auth/login.dart';
import 'package:lampy/layout/custom_auth_layout.dart';
import 'package:lampy/component/custom_elevated_button.dart';
import 'package:lampy/component/custom_icon.dart';
import 'package:lampy/component/custom_input_field.dart';
import 'package:lampy/component/custom_text_button.dart';
import 'package:lampy/config/variable.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  void handleLoginPage(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()) 
    );
  }

  void handleRegister(BuildContext context){
    CustomSnackbar.callSnackbar(context, Variable.errorColor, 'Testing');
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController retypePasswordController = TextEditingController();

    return CustomAuthLayout(
      children: <Widget>[
        
        const CustomIcon(),

        const SizedBox(height: 20.0),

        CustomInputField(
          controller: emailController,
          hintText: 'Email',
          labelText: 'Email',
          obscureText: false,
          prefixIcon: Icon(
            Icons.person,
            color: Variable.primaryColor,
          ),
        ),
        
        const SizedBox(height: 20.0),
        
        CustomInputField(
          controller: passwordController,
          hintText: 'Password',
          labelText: 'Password',
          obscureText: true,
          prefixIcon: Icon(
            Icons.lock,
            color: Variable.primaryColor,
          ),
        ),
        
        const SizedBox(height: 20.0),
        
        CustomInputField(
          controller: retypePasswordController,
          hintText: 'Retype Password',
          labelText: 'Retype Password',
          obscureText: true,
          prefixIcon: Icon(
            Icons.lock,
            color: Variable.primaryColor,
          ),
        ),
        
        const SizedBox(height: 20.0),

        CustomElevatedButton(
          label: 'Register',
          onPressed: () => handleRegister(context)
        ),
        
        const SizedBox(height: 10.0),
        
        CustomTextButton(
          label: 'Login here',
          onPressed: () => handleLoginPage(context)
        ),
      ],
    );
  }
}