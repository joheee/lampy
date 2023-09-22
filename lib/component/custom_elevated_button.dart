import 'package:flutter/material.dart';
import 'package:lampy/config/variable.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  final String label;
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Variable.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: Container(
        width: Variable.defaultComponentWidth,
        height: Variable.defaultComponentHeight,
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: Variable.secondaryColor,
          ),
        ),
      ),
    );
  }
}

