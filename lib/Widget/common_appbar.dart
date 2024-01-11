import 'package:flutter/material.dart';
import 'package:new_project/utils/Constanc.dart';

class CommonAppBar extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final bool centerTitle;
  final bool isBackArrow;
  final double elevation1;
  final double letterSpacing;

  CommonAppBar({
    required this.title,
    required this.backgroundColor,
    this.centerTitle = true,
    this.isBackArrow = true,
    this.elevation1 = 200,
    this.letterSpacing = 1,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation1,
      leading: isBackArrow ? BackButton(color: BlackColor) : SizedBox.shrink(),
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: BlackColor, // Customize the text color if needed
        ),
      ),
      centerTitle: centerTitle,
      actions: [],
    );
  }
}
