import 'package:flutter/material.dart';
import 'package:lampy/config/variable.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Variable.primaryColor,
      ),
      child: Center(
        child: Icon(
          Icons.light,
          color: Variable.secondaryColor,
          size: Variable.defaultComponentHeight,
        ),
      ),
    );
  }
}
