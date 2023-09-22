import 'package:flutter/material.dart';
import 'package:lampy/page/auth/register.dart';
import 'package:lampy/layout/custom_auth_layout.dart';
import 'package:lampy/component/custom_elevated_button.dart';
import 'package:lampy/component/custom_icon.dart';
import 'package:lampy/component/custom_input_field.dart';
import 'package:lampy/component/custom_text_button.dart';
import 'package:lampy/config/variable.dart';
import 'package:lampy/page/home/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void handleRegisterPage(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()) 
    );
  }

  void handleLogin(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()) 
    );
  }

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
          onPressed: () => handleLogin(context)
        ),
        
        const SizedBox(height: 10.0),
        
        CustomTextButton(
          label: 'Register here',
          onPressed: () => handleRegisterPage(context)
        ),
      ],
    );
  }
}