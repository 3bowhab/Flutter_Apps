import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, this.maxLines = 1, this.onsaved});
  final String text;
  final int maxLines;
  final void Function(String?)? onsaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter $text';
        }
        return null;
      },
      cursorColor: mainColor,
      maxLines: maxLines,
      style: feildTextStyle(),
      decoration: InputDecoration(
        hintText: text,
        hintStyle: feildTextStyle(mainColor),
        border: feildBorder(),
        enabledBorder: feildBorder(),
        focusedBorder: feildBorder(mainColor),
        errorBorder: feildBorder(Colors.red),
        focusedErrorBorder: feildBorder(Colors.red),
        errorStyle: const TextStyle(color: Colors.red, fontSize: 14),
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
