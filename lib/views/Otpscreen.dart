import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/Widget/common_appbar.dart';
import 'package:new_project/Widget/common_button.dart';
import 'package:new_project/Widget/common_textfield.dart';
import 'package:new_project/utils/Constanc.dart';
import 'package:new_project/views/Signupscreen.dart';

class Otpscreen extends StatelessWidget {
  Otpscreen({super.key, required this.mobile});

  final _key = GlobalKey<FormState>();

  final String mobile;

  final TextEditingController _otpcontroller = TextEditingController();

  final TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _mobileController.text = mobile;
    print('mobile ====${mobile}');
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CommonAppBar(
            title: 'OTP Verification',
            backgroundColor: WhiteColor,
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Please enter the 4-digit OTP sent to your phone",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Form(
              key: _key,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: CommonTextFormField(
                  hint: 'Add OTP Here',
                  lable: 'OTP ',
                  // prefixText: '+91 ',
                  inputType: TextInputType.name,
                  isMobileNumber: false,
                  isOtp: true,
                  formatter: [otpNumberFormater, OtpLengthFormater],
                  errorMessage: 'Enter valid 4-Digit Number',
                  controller: _otpcontroller,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              child: CommonButton(
                  onPress: () async {
                    if (_key.currentState!.validate()) {
                      print('mobile number =======> ${mobile}');
                      Get.to(() => Singupscreen(
                            mobileNumber: mobile,
                          ));
                    }
                  },
                  title: 'Send OTP'),
            )
          ],
        ),
      ),
    );
  }
}
