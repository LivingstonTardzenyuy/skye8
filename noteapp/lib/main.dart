import 'package:flutter/material.dart';
import 'package:noteapp/home.dart';

void main() => runApp(NoteApp());

class NoteApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}
