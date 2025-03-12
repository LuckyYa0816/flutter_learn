import 'package:flutter/material.dart';

class SwitchAndCheckBoxRoute extends StatefulWidget{
  const SwitchAndCheckBoxRoute({Key?key}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SwitchAndCheckBoxRouteState();
  }
}

class _SwitchAndCheckBoxRouteState extends State<SwitchAndCheckBoxRoute>{
  bool _switchSelected = true;
  bool _checkboxSelected = true;

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      body: Column(
        children: [
          Switch(
            value: _switchSelected,
            onChanged: (value){
              setState(() {
                _switchSelected = value;
              });
            }
          ),
          Checkbox(
            value: _checkboxSelected, 
            onChanged: (value){
              setState(() {
                _checkboxSelected = value!;
              });
            }
          )
        ],
      ),
    );
  }
}