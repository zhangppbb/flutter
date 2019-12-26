import 'package:flutter/material.dart';
// 自定义weight
// https://blog.csdn.net/QiwooMobile/article/details/103590541
class Coordinate {
  final double cx;
  final double cy;
  Coordinate({this.cx, this.cy});
}

class TriangleCustomPainter extends CustomPainter {
  Paint _paint = new Paint();//画笔富含各种属性方法。仔细查看源码
  final BuildContext context;
  final List spots;
  final Color color;

  TriangleCustomPainter(this.context, this.spots, {this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Path path = new Path();
    path.moveTo(spots[0].cx, spots[0].cy);
    path.lineTo(spots[1].cx, spots[1].cy);
    path.lineTo(spots[2].cx, spots[2].cy);
    canvas.drawPath(
    path,
    _paint
    ..style = PaintingStyle.fill
    ..color = color);
  }

  @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}