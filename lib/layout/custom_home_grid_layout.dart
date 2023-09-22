
import 'package:flutter/material.dart';
import 'package:lampy/config/variable.dart';

class CustomHomeGridLayout extends StatelessWidget {
  final NullableIndexedWidgetBuilder itemBuilder;
  const CustomHomeGridLayout({
    super.key,
    required this.itemBuilder
  });

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      backgroundColor: Variable.primaryColor,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 3,
        itemBuilder: itemBuilder
      ),
    );
  }
}