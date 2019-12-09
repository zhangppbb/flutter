import 'package:flutter/material.dart';
// 1、创建main函数
// 2、显示文字hello world 1)
// MaterialApp 设计风格Google

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "我不显示",
      home: Scaffold(
        appBar: AppBar(
          title: Text("时间"),
        ),
        body: ContentText(),
      )
    );
  }
  
}

// 代码重构dart解决层级复杂weidget 树 StatelessWidget 无状态组件

class ContentText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 20,
          color: Colors.green
        ),
        ),
    );
  }
}
