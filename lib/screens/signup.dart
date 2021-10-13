import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Expenses'),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [],
          ),
        ));
  }
}
