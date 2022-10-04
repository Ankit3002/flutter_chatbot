import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Get Request',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String greetings = '';
  String valu = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            Center( 
              child: Container( //container that contains the button 
                width: 150,    
                height: 60,
                child: FloatingActionButton(
                  // color: Colors.blue,
                  onPressed: () async { //async function to perform http get

          
                  // var res = await http.get(Uri.encodeFull(url));
                  // var url = Uri.parse("");
                  Response data = await get(Uri.parse('https://bot-chatu.herokuapp.com/bot'));

                  final decoded = json.decode(data.body) as Map<String, dynamic>; //converting it from json to key value pair 
                  setState(() {
                    greetings = decoded['else'];
                    print(greetings); //changing the state of our widget on data update
                  });

                  },
                  
                ),
              ),
            ),
            Text(greetings, //Text that will be displayed on the screen
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}