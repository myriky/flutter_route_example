import 'package:flutter/material.dart';

class ScreenB extends StatefulWidget {
  ScreenB({Key key, this.title, this.desc}) : super(key: key);

  final String title;
  final String desc;

  @override
  _ScreenBState createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Title : ${widget.title}"),
            Text("Desc : ${widget.desc}"),
          ],
        ),
      ),
    );
  }
}
