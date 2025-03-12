import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextRoute extends StatefulWidget {
  const TextRoute({Key? key}) : super(key: key);

  @override
  _TextRouteState createState() => _TextRouteState();
}

class _TextRouteState extends State<TextRoute> {
  late GestureRecognizer _tapRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    _tapRecognizer = TapGestureRecognizer();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tapRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("Hello World", textAlign: TextAlign.left),
          Text(
            "Hello World!I'm Jack." * 4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text("Hello Word", textScaleFactor: 1.5),
          Text(
            "Hello World",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              height: 1.2,
              fontFamily: "Courier",
              background: Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          Text.rich(
            TextSpan(
                children: [
                    TextSpan(
                        text: "Home:"
                    ),
                    TextSpan(
                        text: "https://flutterchina.club",
                        style: TextStyle(
                            color: Colors.blue
                        ),
                        recognizer: _tapRecognizer
                    )
                ]
            ),
           ),
           DefaultTextStyle(
            style: TextStyle(
                color: Colors.red,
                fontSize: 20,
            ), 
            textAlign: TextAlign.start,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text("hello world"),
                    Text("I am Jack"),
                    Text("I am Jack",
                        style: TextStyle(
                        inherit: false, //2.不继承默认样式
                        color: Colors.grey
                        ),),   
                ],
            ),
            )
        ],
      ),
    );
  }
}
