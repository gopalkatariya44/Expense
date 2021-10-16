import 'package:app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _keyname = GlobalKey<FormState>();
    final myController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // alignment: Alignment.bottomCenter,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 40, left: 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Form(
                  key: _keyname,
                  child: TextFormField(
                    controller: myController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Your Number";
                      } else if (int.parse(value) > 10 &&
                          int.parse(value) <= 10) {
                        return "Plase Enter Below and Above 10";
                      }
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      // filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Mobile Number",
                      // fillColor: Colors.white70,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('If you are Already Logged in?'),
                    Container(
                      child: TextButton(
                        onPressed: () {
                          Get.to(LoginScreen());
                        },
                        child: Text('Login'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Container(
                    width: 200,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_keyname.currentState!.validate()) {
                          Get.to(HomeScreen());
                        }
                      },
                      child: Text(
                        'Signup',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
