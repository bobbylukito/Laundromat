import 'package:flutter/material.dart';
//import 'package:flutter_splashsctreen/home_view.dart';
import 'package:laundmart2/main.dart';
import 'dart:async';

//import 'page/myhomepage.dart';

class SplashScreenPage extends StatefulWidget {
  @override 
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>{
  void iniState(){
    super.initState();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
        HalamanSatu();
        }),
      );
  }
  startSplashScreen() {
    var duration = const Duration (seconds: 3);
    return Timer(duration, (){
      
    });
  }
@override 
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Color(0xFF2E7D32),
    body: Center(
      child: Image.asset(
        "assets/img/logoo.png",
        width: 200.0,
        height: 100.0,
      ),
      
    ),
  );
}
}