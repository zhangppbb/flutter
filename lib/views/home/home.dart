import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(this.title, textAlign: TextAlign.center,),
      ),
      body: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text('', textAlign: TextAlign.center,),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1577154513572&di=f15bb094a3afa6e69c4b45b74f560399&imgtype=0&src=http%3A%2F%2Fimages6.fanpop.com%2Fimage%2Fphotos%2F37100000%2FFlutterfly-ben-10-omniverse-37141854-920-868.jpg"),
            fit: BoxFit.cover
          ),
          color: Colors.red,
          border: Border.all(
            color: Colors.red,
            width: 2
          ),
          borderRadius: BorderRadius.circular(150)
        ),
        padding: EdgeInsets.all(10),
        alignment: Alignment.bottomCenter,
      )
    );
  }

}