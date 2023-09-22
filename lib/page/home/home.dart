import 'package:flutter/material.dart';
import 'package:lampy/component/custom_elevated_button.dart';
import 'package:lampy/component/custom_home_grid_item.dart';
import 'package:lampy/controller/auth_controller.dart';
import 'package:lampy/controller/home_controller.dart';
import 'package:lampy/layout/custom_home_grid_layout.dart';
import 'package:lampy/component/custom_toggle.dart';
import 'package:lampy/config/variable.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitched = false;

  @override
  void initState() {
    super.initState();
    HomeController.switchQuery.onValue.listen((event) {
      final data = event.snapshot.value as Map;
      setState(() {
        isSwitched = data['state'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    AuthController.guestMiddleware(context);

    return CustomHomeGridLayout(
      itemBuilder: (context, index) {
        if (index == 0) {
          return CustomHomeGridItem(
            child: Text(
              '3V',
              style: TextStyle(
                color: Variable.primaryColor,  
                fontSize: Variable.defaultComponentHeight
              ),
            ),
          );
        } else if (index == 1) {
          return CustomHomeGridItem(
            child: GestureDetector(
              onTap: () => HomeController.handleSwitchChange(isSwitched),
              child: CustomToggle(
                isSwitched: isSwitched
              ),
            ),
          );
        } else if (index == 2) {
          return CustomHomeGridItem(
            child: CustomElevatedButton(
              label: 'Logout',
              onPressed: () {
                if(isSwitched) HomeController.handleSwitchChange(isSwitched);
                AuthController.handleLogout(context);
              },
            )
          );
        } else {
          return const Placeholder();
        } 
      },
    );
  }
}