import 'package:flutter/material.dart';

class TextFieldRoute extends StatefulWidget{
  const TextFieldRoute({Key?key}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextFieldRouteState();
  }
}

class _TextFieldRouteState extends State<TextFieldRoute>{

  GlobalKey _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  icon: Icon(Icons.person)
                ),
                validator: (value) {
                  return value!.trim().isNotEmpty?null:"用户名不能为空";
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "你的登录密码",
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator: (value) {
                  return value!.trim().length > 5?null:"密码不能少于6位";
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){
                          if((_formKey.currentState as FormState).validate()){
                            print("验证通过");
                          }
                        }, 
                        child: Text("登录")
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}