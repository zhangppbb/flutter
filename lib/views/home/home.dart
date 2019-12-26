import 'package:flutter/material.dart';
import 'package:hello_flutter/views/answerquestions/answerquestions.dart';
import 'package:hello_flutter/views/home/components/menu.dart';
import 'package:hello_flutter/views/home/components/professional.dart';

class Home extends StatelessWidget {
  final title;
  Home(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyStackPage(this.title);
  }
}

class MyStackPage extends StatefulWidget {
  String title;

  MyStackPage(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyStackPageState(this.title);
  }
}

class MyStackPageState extends State<MyStackPage> {
  String title;

  MyStackPageState(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  // 路由跳转
  _routeTo(BuildContext context, Widget widget) {
    // pushReplacement
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation) {
          return widget;
        }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            // header
            Container(
              height: 44,
              color: Color(0xff00a29a),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      print("学习组切换");
                    },
                    child: Container(
                      width: 16,
                      child: Image.asset(
                        "assets/images/basic/shape.png",
                      ),
                    ),
                  ),
                  Text(
                    "通用学习组",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 16
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
              color: Color(0xff00a29a),
              child: Container(
                height: 120,
                child: Image.asset(
                  "assets/images/practice/banner.png",
                ),
              )
            ),
            // menu
            Container(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => this._routeTo(context, Answerquestions()),
                        child: HomeMenu("assets/images/practice/fast.png", "快速练习"),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          print("每日精选");
                        },
                        child: HomeMenu("assets/images/practice/select.png", "每日精选"),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          print("错题练习");
                        },
                        child: HomeMenu("assets/images/practice/wrongTopic.png", "错题练习"),
                      )
                    ],
                  )
                ],
              ),
            ),
            // topic
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  HomeProfessional()
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}