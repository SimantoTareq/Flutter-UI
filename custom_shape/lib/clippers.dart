import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class clipper extends StatefulWidget {
  const clipper({super.key});

  @override
  State<clipper> createState() => _clipperState();
}

class _clipperState extends State<clipper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: Clip1Clipper(),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}

class Clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    //for triangle
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);

    //for curved
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);

    // path.quadraticBezierTo(0, size.height, 0, 0);
    path.quadraticBezierTo(0, 0, 0, size.height);

    // path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
