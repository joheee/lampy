import 'package:flutter/material.dart';
import 'package:lampy/controller/auth_controller.dart';
import 'package:lampy/controller/login_controller.dart';
import 'package:lampy/controller/register_controller.dart';
import 'package:lampy/layout/custom_auth_layout.dart';
import 'package:lampy/component/custom_elevated_button.dart';
import 'package:lampy/component/custom_icon.dart';
import 'package:lampy/component/custom_input_field.dart';
import 'package:lampy/component/custom_text_button.dart';
import 'package:lampy/config/variable.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController.authMiddleware(context);
    
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
          onPressed: () => RegisterController.handleRegister(context, emailController.text, passwordController.text, retypePasswordController.text)
        ),
        
        const SizedBox(height: 10.0),
        
        CustomTextButton(
          label: 'Login here',
          onPressed: () => LoginController.goToLoginPage(context)
        ),
      ],
    );
  }
}