import 'package:flutter/material.dart';

import 'Home.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "App Jam ToDo List",
      home: Home(),
    );
  }
}
