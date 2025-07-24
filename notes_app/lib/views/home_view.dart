import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Notes', style: TextStyle(fontSize: 25),),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.search, size: 25,))
          ],
        )
      ),
    );
  }
}