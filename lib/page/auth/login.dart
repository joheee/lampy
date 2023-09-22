import 'package:flutter/material.dart';
import 'package:lampy/controller/login_controller.dart';
import 'package:lampy/controller/register_controller.dart';
import 'package:lampy/layout/custom_auth_layout.dart';
import 'package:lampy/component/custom_elevated_button.dart';
import 'package:lampy/component/custom_icon.dart';
import 'package:lampy/component/custom_input_field.dart';
import 'package:lampy/component/custom_text_button.dart';
import 'package:lampy/config/variable.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

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
        
        CustomElevatedButton(
          label: 'Login',
          onPressed: () => LoginController.handleLogin(context, emailController.text, passwordController.text)
        ),
        
        const SizedBox(height: 10.0),
        
        CustomTextButton(
          label: 'Register here',
          onPressed: () => RegisterController.goToRegisterPage(context)
        ),
      ],
    );
  }
}