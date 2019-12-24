import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyStackPage();
  }
}

class MyStackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyStackPageState();
  }
}

class MyStackPageState extends State<MyStackPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("快速登陆"),
        Container(
          child: Image.network(
            "https://daily.upload.inhoo.org/upload/image/7e97a3210c706e834e56e20e4795729f.png",
            width: 240,),
        ),
        TextField(
          decoration: InputDecoration(
            filled: true,
            labelText: "请输入手机号",
            fillColor: Colors.blue
          ),
        )
      ],
    );
  }
}