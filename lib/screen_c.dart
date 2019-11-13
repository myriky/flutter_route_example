import 'package:flutter/material.dart';

class ScreenC extends StatefulWidget {
  ScreenC({Key key, this.id, this.detail}) : super(key: key);

  final int id;
  final int detail;

  @override
  _ScreenCState createState() => _ScreenCState();
}

class _ScreenCState extends State<ScreenC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen C"),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text("Hello, C with ${widget.id}"),
        ],
      )),
    );
  }
}
