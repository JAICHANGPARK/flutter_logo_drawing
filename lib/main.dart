import 'package:drawing_animation/drawing_animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgDrawingWithCustomController("assets/logo_sample.svg"),
      ),
    );
  }
}

class SvgDrawingWithCustomController extends StatefulWidget {
  SvgDrawingWithCustomController(this.assetName);

  final String assetName;

  @override
  SvgDrawingWithCustomControllerState createState() =>
      SvgDrawingWithCustomControllerState();
}

class SvgDrawingWithCustomControllerState
    extends State<SvgDrawingWithCustomController>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  bool _running = false;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    if (_running) {
      _controller.stop();
    } else {
      _controller.stop();
      _controller.repeat();
    }
    _running = !_running;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Text("hello"),
        ));
  }
}
