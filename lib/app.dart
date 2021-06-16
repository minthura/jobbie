import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobbie/routes.dart';
import 'package:jobbie/theme.dart';
import 'package:jobbie/views/screens/base_nav_screen.dart';
import 'package:jobbie/views/screens/login_screen.dart';
import 'package:jobbie/views/screens/my_profile_screen.dart';
import 'package:jobbie/views/screens/signup_screen.dart';

class JobbieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Jobbie',
        theme: theme(),
        routes: routes,
        debugShowCheckedModeBanner: false,
        home: SignUpScreen() //BaseNavScreen(),
        // initialRoute: MyProfileScreen.route,
        );
  }
}
