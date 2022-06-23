// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:book_app/routes.dart';
import 'package:book_app/screens/profile/profile_screen.dart';
import 'package:book_app/screens/splash/splash_screen.dart';
import 'package:book_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sedung_id',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
