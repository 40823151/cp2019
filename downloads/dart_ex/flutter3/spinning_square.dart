import 'package:flutter/material.dart';

class SpinningSquare extends StatefulWidget {
  @override
  _SpinningSquareState createState() => new _SpinningSquareState();
}

class _SpinningSquareState extends State<SpinningSquare>
    with SingleTickerProviderStateMixin {
  AnimationController _animation;

  @override
  void initState() {
    super.initState();
    // We use 3600 milliseconds instead of 1800 milliseconds because 0.0 -> 1.0
    // represents an entire turn of the square whereas in the other examples
    // we used 0.0 -> math.pi, which is only half a turn.
    _animation = new AnimationController(
      duration: const Duration(milliseconds: 3600),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return new RotationTransition(
        turns: _animation,
        child: new Container(
          width: 200.0,
          height: 200.0,
          color: const Color(0xFFFF0000),
        ));
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }
}


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Center(child: new SpinningSquare()),
    ),
  );
}
