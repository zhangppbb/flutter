import 'package:flutter/material.dart';

/**
 * 菜单选择
 */
class HomeMenu extends StatefulWidget {
  String url;
  String title;

  HomeMenu(this.url, this.title);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MenuState();
  }
}

class MenuState extends State<HomeMenu> {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 80,
          height: 80,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Image.asset(widget.url),
        ),
        Text(widget.title)
      ],
    );
  }
  
}