import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class ButtomSheet extends StatelessWidget {
  const ButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              CustomTextField(text: 'Title',),
              SizedBox(height: 20),
              CustomTextField(text: "content", maxLines: 5),
              SizedBox(height: 20),
              CustomButton(text: 'Add',),
            ],
          ),
        ),
      ),
    );
  }
}