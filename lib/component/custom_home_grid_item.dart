
import 'package:flutter/material.dart';
import 'package:lampy/config/variable.dart';

class CustomHomeGridItem extends StatelessWidget {
  final Widget child;
  const CustomHomeGridItem({
    super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: Variable.defaultPadding,
        child: Center(
          child: child
        ),
      ),
    );
  }
}