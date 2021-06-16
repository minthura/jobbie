import 'package:flutter/material.dart';
import 'package:jobbie/views/screens/home_screen.dart';
import 'package:jobbie/views/screens/job_details_screen.dart';
import 'package:jobbie/views/screens/my_profile_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // HomeScreen.route: (_) => HomeScreen(),
  JobDetailsScreen.route: (_) => JobDetailsScreen(),
  MyProfileScreen.route: (_) => MyProfileScreen(),
};
