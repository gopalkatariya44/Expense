import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        
        child: OTPTextField(
          length: 4,
        ),
      ),
    );
  }
}
