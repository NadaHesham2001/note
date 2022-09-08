import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:note/HomePage.dart';




class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState()
  {
    super.initState();
    Timer(
        Duration(seconds: 3),
            ()=>
            Navigator.pushReplacement(context ,MaterialPageRoute(builder: (context)=>HomePage()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[200],
      //  body: Image.asset('assets/12.jpg')
    );
  }
}
