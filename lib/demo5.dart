import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("haaaaa"),
        ),
        body: Container(
          height: 50,
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(2),
                        bottomRight: Radius.circular(2),
                        bottomLeft: Radius.circular(2),
                        topRight: Radius.circular(0),
                      ),
                      border: Border.all(
                        color: UiTheme.COLOR_3655E6,
                        width: 1,
                      )),
                  child: FlatButton(
                    child: Text(
                      "调整费率",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: Image.asset(
                  "assets/images/alipay.png",
                  height: 22,
                  width: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
