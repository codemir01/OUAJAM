
import 'package:flutter/material.dart';

import 'AnaEkran.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Jam Todo List"),
        backgroundColor: Colors.teal,
      ),
      body: const AnaEkran(),
    );
  }
}