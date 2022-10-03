import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
      body: Text('This is the first heroku app' ,
       style:  TextStyle(fontSize: 54),),),
    );
    
  }
}
