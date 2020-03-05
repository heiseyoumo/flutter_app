import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("和假按揭啊"),
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              child: RaisedButton(
                child: Text("哈哈"),
              ),
            ),
            Positioned(
              bottom: 1,
              child: RaisedButton(
                child: Text("哈哈1"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
