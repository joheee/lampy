import 'package:flutter/material.dart';
import 'package:lampy/config/variable.dart';

class CustomTextButton extends StatelessWidget {
  final void Function() onPressed;
  final String label;

  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: Variable.primaryColor,
          fontSize: 16.0,
        ),
      ),
    );
  }
}

