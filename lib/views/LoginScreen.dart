import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/Widget/common_button.dart';
import 'package:new_project/Widget/common_textfield.dart';
import 'package:new_project/utils/Constanc.dart';
import 'package:new_project/views/Otpscreen.dart';

class LoginScreen extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  final TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                child: Image.asset(bgimage),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    SizedBox(height: 90, width: 120, child: Image.asset(logoo)),
                    SizedBox(
                        height: 130, width: 220, child: Image.asset(QuizBook)),
                    SizedBox(
                      height: 10,
                    ),
                    Form(
                      key: _key,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: CommonTextFormField(
                          controller: _mobileController,
                          hint: 'Add Mobile Number',
                          lable: 'Mobile ',
                          // prefixText: '+91 ',
                          inputType: TextInputType.name,
                          isMobileNumber: true,
                          formatter: [
                            mobileNumberFormater,
                            mobileLengthFormatter
                          ],
                          errorMessage: 'Enter 10-Digit Number',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 50,
          child: CommonButton(
              onPress: () async {
                if (_key.currentState!.validate()) {
                  final data = _mobileController.text;
                  print(data);
                  Get.to(() => Otpscreen(mobile: data));
                }
              },
              title: 'Send OTP'),
        ));
  }
}
