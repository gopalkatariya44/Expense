import 'package:app/screens/home.dart';
import 'package:app/screens/login.dart';
import 'package:app/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Expenses',
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      home: const SignUpScreen(),
    );
  }
}
