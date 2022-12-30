import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Design'),
      ),
      body: CustomPaint(
        painter: MyShape(),
        child: Container(),
      ),
    );
  }
}

class MyShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();
    final path = Path();
    //for border use stroke and fill use fillf
    paint.style = PaintingStyle.fill;
    //to set the width of curve
    paint.strokeWidth = 5;
    paint.color = Colors.teal;

    //starting point
    path.moveTo(0, size.height * 0.8);
    //curved form the current point
    path.quadraticBezierTo(size.width * .1, size.height * 0.78,
        size.width * 0.3, size.height * 0.89);

    path.quadraticBezierTo(size.width * .45, size.height * 0.95,
        size.width * 0.6, size.height * 0.85);

    path.quadraticBezierTo(size.width * .75, size.height * 0.75,
        size.width * 0.85, size.height * 0.7);

    path.quadraticBezierTo(size.width * .95, size.height * 0.65, size.width * 1,
        size.height * 0.68);

    //to fill border of  the curved
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.8);

    //to show or print the path or curve
    canvas.drawPath(path, paint);

    final paint1 = Paint();
    paint1.style = PaintingStyle.stroke;
    paint1.color = Colors.yellow;
    canvas.drawPath(path, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
