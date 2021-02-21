import 'package:flutter/material.dart';

class Tester extends StatefulWidget {
  @override
  _TesterState createState() => _TesterState();
}

class _TesterState extends State<Tester> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BottomWaveClipper"),
        ),
        body: Center(
          child: MyClipPath(),
        ),
      ),
    );
  }
}

class MyClipPath extends StatelessWidget {
  final Color backgroundColor = Colors.red;
  @override

  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomWaveClipper(),
      child: Container(
        color: backgroundColor.withOpacity(1),
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override

  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(2527.7219999999998 * _xScaling,786.88 * _yScaling);
    path.cubicTo(2527.7219999999998 * _xScaling,786.88 * _yScaling,2512.673 * _xScaling,810.88 * _yScaling,2515.9139999999998 * _xScaling,846.88 * _yScaling,);
    path.cubicTo(2519.1549999999997 * _xScaling,882.88 * _yScaling,2572.7219999999998 * _xScaling,895.88 * _yScaling,2572.7219999999998 * _xScaling,895.88 * _yScaling,);
    path.cubicTo(2572.7219999999998 * _xScaling,895.88 * _yScaling,2640.7219999999998 * _xScaling,899.88 * _yScaling,2651.7219999999998 * _xScaling,947.88 * _yScaling,);
    path.cubicTo(2662.7219999999998 * _xScaling,995.88 * _yScaling,2739.7219999999998 * _xScaling,1000.88 * _yScaling,2739.7219999999998 * _xScaling,1000.88 * _yScaling,);
    path.cubicTo(2739.7219999999998 * _xScaling,1000.88 * _yScaling,2739.7219999999998 * _xScaling,786.88 * _yScaling,2739.7219999999998 * _xScaling,786.88 * _yScaling,);
    path.cubicTo(2739.7219999999998 * _xScaling,786.88 * _yScaling,2527.7219999999998 * _xScaling,786.88 * _yScaling,2527.7219999999998 * _xScaling,786.88 * _yScaling,);
    return path;
  }
  @override

  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
