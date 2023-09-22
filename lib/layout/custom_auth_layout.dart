import 'package:flutter/material.dart';
import 'package:lampy/config/variable.dart';

class CustomAuthLayout extends StatelessWidget {
  final List<Widget> children;
  const CustomAuthLayout({
    super.key,
    required this.children
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Variable.secondaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: Variable.defaultPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: children
            ),
          ),
        ),
      ),
    );
  }
}