import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<FormState>();
    final myController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Expenses'),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextFormField(
                        controller: myController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter The Value";
                          } else if (int.parse(value) > 10 &&
                              int.parse(value) <= 10) {
                            return "Plase Enter Below and Above 10";
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Mobile Number",
                          // fillColor: Colors.white70,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('If you are Already Logged in?'),
                          Container(
                            child: TextButton(
                              onPressed: () {
                                if (_key.currentState!.validate()) {
                                  print(('Done'));
                                }
                              },
                              child: Text('Login'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Container(
                      //   width: 125,
                      //   height: 40,
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     child: Text(
                      //       'Login',
                      //       style: TextStyle(fontSize: 18),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(width: 40),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Container(
                          width: 125,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
