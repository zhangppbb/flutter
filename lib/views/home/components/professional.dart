import 'package:flutter/material.dart';
import 'package:hello_flutter/components/triangle.dart';
/**
 * 专业选择
 */
class HomeProfessional extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfessionalState();
  }
}

class ProfessionalState extends State<HomeProfessional> {
  @override
  Widget build(BuildContext context) {
    List leftSpots = new List(3);
    leftSpots[0] = Coordinate(cx: 0, cy: -6);
    leftSpots[1] = Coordinate(cx: 0, cy: 6);
    leftSpots[2] = Coordinate(cx: 8, cy: 0);
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: CustomPaint(
                    size: Size(20, 0),
                    painter: TriangleCustomPainter(
                    context,
                    leftSpots,
                    color: Color(0xffcccccc)),
                  ),
                ),
                Container(
                  child: Text("专业一"),
                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                ),
                Container(
                  child: Text(
                    "15/15",
                    style: TextStyle(
                      color: Color(0xffa0a0a0),
                      fontSize: 12
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(26, 5, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                width: 300,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xff00a29a),
                  border: Border.all(width: 1, color: Color(0xff00a29a))
                ),
                child: Text(
                  "100%",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffffffff)
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("答题");
                },
                child: Container(
                  width: 20,
                  child: Image.asset(
                    "assets/images/practice/pen.png"
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}