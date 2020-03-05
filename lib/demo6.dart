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
            title: Text("haha"),
          ),
          body: Container(
            height: 100,
            margin: EdgeInsets.all(15),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: Container(
                            width: double.maxFinite,
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
                                style: TextStyle(
                                    fontSize: 14, color: UiTheme.COLOR_3655E6),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Image.asset(
                            "assets/images/fee_selected.png",
                            width: 22,
                            height: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child: Container(
                              width: double.maxFinite,
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
                                  "自定义团队费率",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: UiTheme.COLOR_3655E6),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Image.asset(
                              "assets/images/fee_selected.png",
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
