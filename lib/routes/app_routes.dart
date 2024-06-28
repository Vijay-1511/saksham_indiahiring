import 'package:flutter/material.dart';
import 'package:vijay_s_application1/presentation/android_small_eight_screen/widgets/home_page.dart';
import 'package:vijay_s_application1/core/app_export.dart';
import '../presentation/android_small_eight_screen/android_small_eight_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {

  // static const String androidSmallEightScreen = '/android_small_eight_screen';
  // static const String initialRoute = '/initialRoute';

  static const String homePage = '/home_page';

  static const String initialRoute = '/initialRoute';


  static Map<String, WidgetBuilder> routes = {

    // androidSmallEightScreen: (context) => AndroidSmallEightScreen(),
    // initialRoute: (context) => AndroidSmallEightScreen()

    homePage: (context) => HomePage(),
    initialRoute: (context) => HomePage(),
  };
}
