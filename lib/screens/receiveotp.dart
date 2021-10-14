import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ReceiveOtp extends StatelessWidget {
  const ReceiveOtp({Key? key}) : super(key: key);

  get appContext => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP'),
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
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Enter the Otp to Veryfi your Acount',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('the OTP has been send to 72290168****'),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: PinCodeTextField(
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(4),
                            fieldHeight: 55,
                            fieldWidth: 40,
                            activeFillColor: Colors.white,
                          ),
                          length: 4,
                          appContext: context,
                          pastedTextStyle: TextStyle(
                            color: Colors.green.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                          onChanged: (String value) {},
                        ),
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Resend OTP',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        onTap: () {},
                      ),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 30),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              const Text(
                                "Validate OTP",
                                style: TextStyle(fontSize: 15),
                              ),
                              IconButton(
                                  onPressed: null,
                                  icon: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ))
                            ],
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
