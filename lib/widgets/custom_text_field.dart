import 'package:flutter/material.dart';
import 'package:note_app/constants/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: kPrimaryColor,
          fontSize: 18,
        ),
        hintText: hintText,
        enabledBorder: borderStyle(
          borderColor: Colors.white,
        ),
        focusedBorder: borderStyle(),
      ),
    );
  }

  OutlineInputBorder borderStyle({Color? borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: borderColor ?? kPrimaryColor,
      ),
    );
  }
}
