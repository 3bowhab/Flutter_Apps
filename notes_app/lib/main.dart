import 'package:flutter/material.dart';
import 'package:notes_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 39, 56),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 0, 39, 56),
          elevation: 0,
        ),
      ),
      home: const HomeView(),
    );
  }
}
