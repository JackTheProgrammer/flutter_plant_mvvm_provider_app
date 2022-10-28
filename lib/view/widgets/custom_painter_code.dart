import 'package:flutter/material.dart';
// CustomPaint(
//   size: Size(WIDTH,(WIDTH*0.3333333333333333).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//   painter: RPSCustomPainter(),
// )

// CustomPaint(
//   size: Size(WIDTH,(WIDTH*0.3333333333333333).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//   painter: RPSCustomPainter(),
// ),

class PlantAppCustomPainter extends CustomPainter {
  final Color color;

  PlantAppCustomPainter(this.color);
  

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.4195333, size.height * 0.6467667);
    path0.cubicTo(
        size.width * 0.6487333,
        size.height * 0.5325000,
        size.width * 0.6174111,
        size.height * 0.4899667,
        size.width * 0.6234000,
        size.height * 0.1452667);
    path0.quadraticBezierTo(size.width * 0.3921778, size.height * 0.0072667,
        size.width * 0.3611222, size.height * 0.1639000);
    path0.quadraticBezierTo(size.width * 0.3221667, size.height * 0.5481333,
        size.width * 0.4195333, size.height * 0.6467667);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
