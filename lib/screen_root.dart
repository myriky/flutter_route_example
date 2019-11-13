import 'package:flutter/material.dart';

class ScreenRoot extends StatefulWidget {
  ScreenRoot({Key key}) : super(key: key);

  @override
  _ScreenRootState createState() => _ScreenRootState();
}

class _ScreenRootState extends State<ScreenRoot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ROOT"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("I'm √"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RaisedButton(
                  child: Text("screen_a"),
                  onPressed: () {
                    Navigator.pushNamed(context, "screen_a");
                  },
                ),
                RaisedButton(
                  child: Text("/screen_a"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/screen_a");
                  },
                ),
                RaisedButton(
                  child: Text("/screen_a/안녕하세요"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/screen_a/안녕하세요");
                  },
                ),
                RaisedButton(
                  child: Text("/screen_b"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/screen_b");
                  },
                ),
                RaisedButton(
                  child: Text("/screen_b?param=1&param=2"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/screen_b?param1=1&param2=2");
                  },
                ),
                RaisedButton(
                  child: Text(
                      "/screen_b with {\"param1\":\"hi\", \"param2\": \"hello\"}"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/screen_b",
                        arguments: {"param1": "hi", "param2": "hello"});
                  },
                ),
                RaisedButton(
                  child: Text("/screen_c/123"),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/screen_c/123",
                    );
                  },
                ),
                RaisedButton(
                  child: Text("/screen_d"),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/screen_d",
                    );
                  },
                )
              ],
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );
  }
}
