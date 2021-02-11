import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Application",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePage createState() => HomePage();
}

newColor(){
  String color = '0xff';
  List<String> num = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
                      'a', 'b', 'c', 'd', 'e', 'f'];

  Random random = new Random();

  for(int i = 0; i < 6; i++)
    color += num[random.nextInt(num.length)];

  return int.parse(color);
}

class HomePage extends State<MyHomePage> {

  int color = newColor();

  void changeColor(){
    setState((){
      color = newColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Color Changing Application"),
        ),
        body: GestureDetector(
            onTap: (){
              changeColor();
            },
            child: new Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.center,
              color: Color(color),
              child: new Text("Hey there", style: TextStyle(fontSize: 28.0))
            )
        )
    );
  }
}

