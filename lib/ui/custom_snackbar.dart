import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  CustomSnackBar({
    super.key,
    required String message,
    super.backgroundColor,
    Color? textColor,
    super.duration = const Duration(seconds: 3),
  }) : super(
          content: Text(
            message,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
            ),
          ),
        );
}
