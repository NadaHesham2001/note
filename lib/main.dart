import 'package:flutter/material.dart';
import 'package:note/AddNote.dart';
import 'package:note/HomePage.dart';
import 'package:note/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:splash(),
    );
  }
}

