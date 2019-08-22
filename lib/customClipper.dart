
import 'package:flutter/material.dart';
var ph;
var pw;

class CustomShapeClipper extends CustomClipper<Path>{

  @override
  getClip(Size size) {
    ph = size.height;
    pw  = size.width;
    final Path path = Path();

    path.lineTo(0, ph);

    path.cubicTo(pw / 2, ph, pw / 1.3, ph / 1.2, pw, ph / 2.25);

    path.lineTo(pw, ph);
    path.lineTo(pw, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) =>true;

}