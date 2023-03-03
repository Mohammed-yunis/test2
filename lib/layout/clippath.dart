import 'package:flutter/cupertino.dart';

class ClipPath1 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   var h=size.height;
   var w=size.width;
   final path=Path();
   path.lineTo(0, h-40);
   path.quadraticBezierTo(w/7, h-50, w/3, h-30);
   path.quadraticBezierTo(w-110, h, w, h-30);
   path.lineTo(w, 0);
   return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}