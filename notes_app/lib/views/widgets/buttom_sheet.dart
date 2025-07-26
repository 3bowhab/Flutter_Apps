import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class ButtomSheet extends StatelessWidget {
  const ButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextField(text: 'Title',),
          SizedBox(height: 20),
          CustomTextField(text: "content", maxLines: 5),
        ],
      ),
    );
  }
}

