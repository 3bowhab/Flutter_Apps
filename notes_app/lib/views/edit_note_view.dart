import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CustomAppBar(
          text: 'Edit Note',
          icon: Icons.check,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
          children: [
            CustomTextField(text: 'Title'),
            const SizedBox(height: 20),
            CustomTextField(text: 'Content', maxLines: 10),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}