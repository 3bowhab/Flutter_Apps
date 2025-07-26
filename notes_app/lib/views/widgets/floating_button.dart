import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/new_note.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return NewNote();
          },
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
