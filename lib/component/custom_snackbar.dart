import 'package:flutter/material.dart';
import 'package:lampy/config/variable.dart';

class CustomSnackbar {
  static void invoke(
    BuildContext context, 
    Color backgroundColor,
    String text
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor, // Set your desired background color
        content: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Variable.secondaryColor, // Set the text color
                  fontSize: 16.0, // Set the text font size
                ),
              ),
              Icon(
                Icons.check, // Add an icon if needed
                color: Variable.secondaryColor, // Set the icon color
              ),
            ],
          ),
        ),
      ),
    );
  }
}
