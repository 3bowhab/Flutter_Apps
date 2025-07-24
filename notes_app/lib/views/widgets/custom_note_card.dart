import 'package:flutter/material.dart';

class CustomNoteCard extends StatelessWidget {
  const CustomNoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Flutter tips",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                Spacer(),
                Transform.translate(
                  offset: Offset(0, 18),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.black, size: 30),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 250,
              child: Text(
                'Build Your Career With Ali Abdelwhab',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: TextStyle(
                  color: Colors.black.withValues(alpha: .4),
                  fontSize: 18,
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Text(
                  'May 21.2025',
                  style: TextStyle(color: Colors.black.withValues(alpha: .4)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
