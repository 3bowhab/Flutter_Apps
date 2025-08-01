import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, this.maxLines = 1});
  final String text;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: mainColor,
      maxLines: maxLines,
      style: feildTextStyle(),
      decoration: InputDecoration(
        hintText: text,
        hintStyle: feildTextStyle(mainColor),
        border: feildBorder(),
        enabledBorder: feildBorder(),
        focusedBorder: feildBorder(mainColor),
      ),
    );
  }

  TextStyle feildTextStyle([color]) => TextStyle(color: color ?? Colors.white, fontFamily: mainFont);

  OutlineInputBorder feildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
