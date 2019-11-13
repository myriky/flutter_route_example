import 'package:flutter/material.dart';

class ScreenA extends StatefulWidget {
  ScreenA({Key key, this.param}) : super(key: key);

  final String param;

  @override
  _ScreenAState createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: Text("Hello, ${widget.param}"),
      ),
    );
  }
}
