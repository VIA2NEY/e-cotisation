import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home_screen.dart';

abstract class AppRoutes {
  static const homeScreen = "homeScreen";
  
  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => const HomeScreen(),
  };
}
