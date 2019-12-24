import 'package:flutter/material.dart';
import 'package:hello_flutter/views/home/home.dart';
import 'package:hello_flutter/views/home/login.dart';
// 1、创建main函数
// 2、显示文字hello world 1)
// MaterialApp 设计风格Google
// dart 实例化new 关键字可以省略

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "乐随学",
      theme: ThemeData( // 改变主题色
        primaryColor: Colors.green,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent
      ),
      home: MyStackPage()
    );
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
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedFontSize: 14,
        iconSize: 24,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("分类")
          )
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          Login(),
          Home(),
        ],
      ),
    );
  }
}