
import 'package:flutter/material.dart';
var ph;
var pw;

class CustomShapeClipper extends CustomClipper<Path>{

  @override
  getClip(Size size) {
    ph = size.height;
    pw  = size.width;
    final Path path = Path();

    path.lineTo(0, ph/1.15);

    path.cubicTo(pw/2.25, ph/1.25, pw/1.75, ph, pw, ph/1.025);

    path.lineTo(pw, ph);
    path.lineTo(pw, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) =>true;

}