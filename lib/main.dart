// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_login/app_colors.dart';
import 'package:simple_login/screen_login.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: ,
      home: LoginScreen(),
    );
  }
}

