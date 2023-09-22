import 'package:flutter/material.dart';
import 'package:lampy/config/variable.dart';

class CustomToggle extends StatelessWidget {
  const CustomToggle({
    super.key,
    required this.isSwitched,
  });

  final bool isSwitched;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Variable.defaultComponentWidth,
      height: Variable.defaultComponentHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Variable.primaryColor,
      ),
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            duration: Variable.toggleDuration,
            curve: Curves.easeInOut,
            top: 5.0,
            left: isSwitched ? 70.0 : 5.0,
            right: isSwitched ? 5.0 : 70.0,
            child: AnimatedContainer(
              duration: Variable.toggleDuration,
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Variable.secondaryColor,
              ),
              child: Center(
                child: Icon(
                  isSwitched ? Icons.lightbulb : Icons.power_settings_new,
                  size: 30.0,
                  color: Variable.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
