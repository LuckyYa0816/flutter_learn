import 'package:flutter/material.dart';

import 'chapter3/botton.dart';
import 'chapter3/image_icon.dart';
import 'chapter3/switch_checkbox.dart';
import 'chapter3/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "text":(context)=>TextRoute(),
        "button":(context)=>BottonRoute(),
        "image_icon":(context)=>ImageAndIconRoute(),
        "switch_checkbox":(context)=>SwitchAndCheckBoxRoute(),
      },
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, "text");
              }, 
              child: Text("text")
            ),
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, "button");
              }, 
              child: Text("button")
            ),
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, "image_icon");
              }, 
              child: Text("image_icon")
            ),
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, "switch_checkbox");
              }, 
              child: Text("switch_checkbox")
            ),
          ],
        ),
      ),
    );
  }
}
