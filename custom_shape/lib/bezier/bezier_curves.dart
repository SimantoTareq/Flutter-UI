import 'package:custom_shape/bezier/clip_shadow_path.dart';
import 'package:custom_shape/bezier/custom.dart';
import 'package:custom_shape/clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bezierCurves extends StatefulWidget {
  const bezierCurves({super.key});

  @override
  State<bezierCurves> createState() => _bezierCurvesState();
}

class _bezierCurvesState extends State<bezierCurves> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          ClipShadowPath(
            clipper: BigClipper(),
            shadow: const BoxShadow(
                color: Colors.black,
                offset: Offset(4, 4),
                blurRadius: 4,
                spreadRadius: 8),
            child: Container(
              color: Colors.orangeAccent,
            ),
          ),
          ClipShadowPath(
            shadow: const BoxShadow(
                color: Colors.black,
                offset: Offset(4, 4),
                blurRadius: 4,
                spreadRadius: 8),
            clipper: SmallClipper(),
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
