import 'package:flutter/material.dart';

class Screen404 extends StatefulWidget {
  Screen404({Key key}) : super(key: key);

  @override
  _Screen404State createState() => _Screen404State();
}

class _Screen404State extends State<Screen404> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ooops.."),
      ),
      body: Center(
        child: Column(
          children: <Widget>[Text("😂"), Text("404 Not Found!")],
        ),
      ),
    );
  }
}
