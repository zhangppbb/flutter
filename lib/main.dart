import 'package:flutter/material.dart';
import 'package:hello_flutter/views/home/home.dart';
import 'package:hello_flutter/views/home/login.dart';
// 乐随学（静态页面）
// 1）页面盘点（登录，首页，答题，我的）
// 2）技术难点
    // 1） 路由跳转，权限管理
// 参考文章
// 1）路由：https://blog.csdn.net/qq_32760901/article/details/92782987
      // pushReplacementNamed（重定向） || pushNamed（正常跳转） 参数
      // pushReplacement （重定向） || push（正常跳转） 可带参数

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "乐随学",
      theme: ThemeData( // 改变主题色
        primaryColor: Color(0xff00a29a),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent
      ),
      routes: <String, WidgetBuilder> {
        'login': (BuildContext context) => Login(),
        'home' : (BuildContext context) => Home(''),
      },
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
          Home(''),
        ],
      ),
    );
  }
}