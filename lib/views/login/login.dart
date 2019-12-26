import 'package:flutter/material.dart';
import 'package:hello_flutter/views/home/home.dart';

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
        Container(
          child: Image.network(
            "https://daily.upload.inhoo.org/upload/image/7e97a3210c706e834e56e20e4795729f.png",
            width: 240,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          margin: EdgeInsets.fromLTRB(0, 80, 0, 20),
          child: TextField( // 手机号
            decoration: InputDecoration(
              filled: true,
              prefixIcon: Icon(Icons.account_box),
              hintText: "请输入手机号",
              focusColor: Color(0xff00a29a),
              hoverColor: Color(0xff00a29a),
              fillColor: Colors.white
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextField( // 手机号
            decoration: InputDecoration(
              filled: true,
              prefixIcon: Icon(Icons.code),
              hintText: "请输入验证码",
              focusColor: Color(0xff00a29a),
              hoverColor: Color(0xff00a29a),
              fillColor: Colors.white
            ),
          ),
        ),
        Container(
          width: 280,
          height: 40,
          margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: RaisedButton(
            child: Text(
              "登录",
              style: TextStyle(
              color: Colors.white
            ),),
            color: Color(0xff00a29a),
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (
                    BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                    return Home("乐随学");
                  }
                )
              );
            },
          ),
        )
      ],
    );
  }
}