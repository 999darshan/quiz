import 'package:flutter/material.dart';
import 'package:new_project/utils/Constanc.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;

  final TextStyle buttonTextStyle = TextStyle(
      color: WhiteColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 2);

  CommonButton({
    super.key,
    required this.onPress,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: MixPurple,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(00),
                side: BorderSide(
                  color: WhiteColor,
                ))),
        onPressed: onPress,
        child: Text(
          title,
          style: buttonTextStyle,
        ));
  }
}
