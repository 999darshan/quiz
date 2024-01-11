import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_project/utils/Constanc.dart';
import 'package:new_project/utils/Utility.dart';

class CommonTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String lable;
  final String prefixText;
  final bool autoFocus;
  final bool textInputAction;
  final TextInputType inputType;
  final List<TextInputFormatter> formatter;
  final bool isMobileNumber;
  final bool isOtp;
  final bool isEmailField;
  final String errorMessage;
  final String prefixIcon;
  final bool isReadOnly;

  final TextStyle lableStyle =
      TextStyle(color: BlackColor, fontSize: 18, fontWeight: FontWeight.w500);
  final TextStyle hintStyle = TextStyle(color: MixBlack, fontSize: 15);
  final TextStyle textStyle = TextStyle(color: BlackColor, fontSize: 15);

  final TextStyle prefixtextStyle = TextStyle(color: BlackColor, fontSize: 15);

  final InputBorder border =
      UnderlineInputBorder(borderSide: const BorderSide(color: MixPurple));

  final TextStyle mobileNumberStyle = TextStyle(color: Colors.black);
  final TextStyle otpNumberStyle = TextStyle(color: Colors.black);

  CommonTextFormField({
    super.key,
    required this.hint,
    required this.lable,
    this.prefixText = '',
    // this.prefixText = '',
    this.autoFocus = false,
    this.textInputAction = true,
    required this.inputType,
    required this.formatter,
    this.isMobileNumber = false,
    this.isOtp = false,
    this.prefixIcon = '',
    required this.errorMessage,
    this.isEmailField = false,
    this.isReadOnly = false,
    required this.controller, 
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: isReadOnly,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      autofocus: autoFocus,
      textInputAction: TextInputAction.next,
      keyboardType: inputType,
      style: textStyle,
      inputFormatters: formatter,
      decoration: InputDecoration(
          prefix: isMobileNumber
              ? Text('+91', style: mobileNumberStyle)
              : SizedBox.shrink(),
          hintText: hint,
          hintStyle: hintStyle,
          // prefixText: prefixText,
          prefixStyle: prefixtextStyle,
          focusedBorder: border,
          label: Text(
            lable,
            style: lableStyle,
          )),
      validator: (newVal) {
        // print(newVal);
        if (isMobileNumber) {
          if (newVal!.isEmpty || newVal!.length < 10) {
            return errorMessage;
          }
        }
        ;
        if (isOtp) {
          if (newVal!.isEmpty || newVal!.length < 4) {
            return errorMessage;
          }
        } else if (isEmailField) {
          if (newVal!.isEmpty || !Utility.isEmailValid(newVal)) {
            return errorMessage;
          } else {
            print('email is valid');
          }
        } else {
          if (newVal!.isEmpty) {
            return errorMessage;
          }
        }

        return null;
      },
    );
  }
}
