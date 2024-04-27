import 'package:flutter/material.dart';
import 'listes_candidats.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Election App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CandidatesListPage(),
    );
  }
}