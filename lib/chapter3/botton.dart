
import 'package:flutter/material.dart';

class BottonRoute extends StatefulWidget{
  const BottonRoute({Key?key}):super(key: key);

  @override
  _BottonRouteState createState()=>_BottonRouteState();
}

class _BottonRouteState extends State<BottonRoute>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: (){}, 
          child: Text("normal")
        ),
        TextButton(
          onPressed: (){}, 
          child: Text("Submit")
        ),
        OutlinedButton(
          onPressed: (){}, 
          child: Text("normal")
        ),
        IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.thumb_up)
        ),
        ElevatedButton.icon(
          onPressed: _onPressed,
          label: Text("发送"),
          icon: Icon(Icons.send)
        ),
        OutlinedButton.icon(
          onPressed: _onPressed, 
          label: Text("添加"),
          icon: Icon(Icons.add)
        ),
        TextButton.icon(
          onPressed: _onPressed, 
          label: Text("详情"),
          icon: Icon(Icons.info)
        )
      ],
    );
  }

  void _onPressed(){
    print("button pressed");
  }
}