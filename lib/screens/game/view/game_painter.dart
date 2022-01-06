import 'package:flutter/material.dart';

class GamePainter extends CustomPainter {
  late Canvas canvas;
  late Size size;
  late List<int> gameNotation;
  final List<Offset> gameNotationOffset = [];
  GamePainter(this.gameNotation);

  @override
  void paint(Canvas canvas, Size size) {
    this.canvas = canvas;
    this.size = size;
    // that is central point of cubes of gameNotation
    for (var y = 0; y < 3; y++) {
      for (var x = 0; x < 3; x++) {
        gameNotationOffset.add(Offset(size.width / 6 + (size.width / 3 * x),
            size.height / 6 + (size.height / 3 * y)));
      }
    }
    gameSchema();
    print("deneme " + gameNotation.toString());
    for (var i = 0; i < 9; i++) {
      if (gameNotation[i] == 1) {
        oShape(i);
      } else if (gameNotation[i] == 2) {
        xShape(i);
      }
    }
  }

  void gameSchema() {
    Paint paint1 = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width / 100;
    canvas.drawLine(
        Offset(size.width / 3, 0), Offset(size.width / 3, size.height), paint1);
    canvas.drawLine(Offset(size.width * 2 / 3, 0),
        Offset(size.width * 2 / 3, size.height), paint1);
    canvas.drawLine(Offset(0, size.height / 3),
        Offset(size.width, size.height / 3), paint1);
    canvas.drawLine(Offset(0, size.height * 2 / 3),
        Offset(size.width, size.height * 2 / 3), paint1);
  }

  void oShape(int i) {
    final Paint oShapePaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(gameNotationOffset[i], size.width / 8, oShapePaint);
  }

  void xShape(int i) {
    final Paint xShapePaint = Paint()..color = Colors.blue;
    const shapeRate = 8;
    canvas.drawLine(
        gameNotationOffset[i] -
            Offset(size.width / shapeRate, size.height / shapeRate),
        gameNotationOffset[i] +
            Offset(size.width / shapeRate, size.height / shapeRate),
        xShapePaint);

    canvas.drawLine(
        gameNotationOffset[i] -
            Offset(size.width / shapeRate, size.height / shapeRate),
        gameNotationOffset[i] +
            Offset(size.width / shapeRate, size.height / shapeRate),
        xShapePaint);
  }

  @override
  bool shouldRepaint(GamePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(GamePainter oldDelegate) => false;
}
