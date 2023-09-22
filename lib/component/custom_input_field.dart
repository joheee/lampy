import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool obscureText;
  final Icon prefixIcon;
  final TextEditingController controller;

  const CustomInputField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.obscureText,
    required this.prefixIcon,
    required this.controller
  });


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon
      ),
    );
  }
}