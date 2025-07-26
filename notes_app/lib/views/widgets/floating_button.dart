import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/buttom_sheet.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: mainColor,
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return ButtomSheet();
          },
        );
      },
      child: const Icon(Icons.add, color: Colors.black,),
    );
  }
}
