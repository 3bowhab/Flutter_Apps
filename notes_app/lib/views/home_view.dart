import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_note_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(right: 18, left: 18, bottom: 30),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => const CustomNoteCard(),
        ),
      ),
    );
  }
}