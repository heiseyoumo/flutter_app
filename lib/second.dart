import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(SecondRoute());
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,
                color: UiTheme.DEFAULT_TEXT_COLOR, size: 17),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "新增团队",
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 16,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Color(0xFFFAFAFA),
          child: AddTeamPage(),
        ),
      ),
    );
  }
}

class AddTeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, allowFontScaling: true);
    return Column(
      children: <Widget>[
        Container(
          height: ScreenUtil().setWidth(55),
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          margin: EdgeInsets.fromLTRB(14, 15, 14, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                color: Color(0x33999999),
                offset: Offset(0.0, 5.0), //阴影xy轴偏移量
                blurRadius: 15.0, //阴影模糊程度
                spreadRadius: 11.0, //阴影扩散程度
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "团队名称",
                style: TextStyle(fontSize: 14, color: UiTheme.COLOR_333333),
              ),
              Expanded(
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "请输入团队名称",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: UiTheme.COLOR_999999,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(15, 15, 40, 20),
          margin: EdgeInsets.fromLTRB(14, 0, 14, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(5.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x33999999),
                offset: Offset(0.0, 5.0), //阴影xy轴偏移量
                blurRadius: 15.0, //阴影模糊程度
                spreadRadius: 1.0, //阴影扩散程度
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                child: Text(
                  "设置费率",
                  style: TextStyle(
                    fontSize: 14,
                    color: UiTheme.COLOR_333333,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "同总部费率",
                      style:
                          TextStyle(fontSize: 14, color: UiTheme.COLOR_3655E6),
                    ),
                  ),
                  RaisedButton(
                    child: Text(
                      "自定义团队费率",
                      style:
                          TextStyle(fontSize: 14, color: UiTheme.COLOR_3655E6),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          height: 1,
          color: UiTheme.COLOR_E6E6E6,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(14, 0, 14, 0),
          padding: EdgeInsets.fromLTRB(15, 00, 15, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x33999999),
                offset: Offset(0.0, 5.0), //阴影xy轴偏移量
                blurRadius: 15.0, //阴影模糊程度
                spreadRadius: 1.0, //阴影扩散程度
              )
            ],
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/alipay.png",
                          height: 22,
                          width: 22,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.5,
                          ),
                          child: Text(
                            "支付宝",
                            style: TextStyle(
                              fontSize: 14,
                              color: UiTheme.COLOR_333333,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "请输入费率",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: UiTheme.COLOR_999999,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.5),
                            child: Text(
                              "%",
                              style: TextStyle(
                                fontSize: 14,
                                color: UiTheme.COLOR_333333,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                color: UiTheme.COLOR_E6E6E6,
              ),
              Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/wechat.png",
                          height: 22,
                          width: 22,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.5,
                          ),
                          child: Text(
                            "支付宝",
                            style: TextStyle(
                              fontSize: 14,
                              color: UiTheme.COLOR_333333,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "请输入费率",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: UiTheme.COLOR_999999,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.5),
                            child: Text(
                              "%",
                              style: TextStyle(
                                fontSize: 14,
                                color: UiTheme.COLOR_333333,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                color: UiTheme.COLOR_E6E6E6,
              ),
              Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/quick_pay.png",
                          height: 22,
                          width: 22,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.5,
                          ),
                          child: Text(
                            "支付宝",
                            style: TextStyle(
                              fontSize: 14,
                              color: UiTheme.COLOR_333333,
                            ),
                          ),
                        ),
                        Text(
                          "(支付金额≤1000)",
                          style: TextStyle(
                            fontSize: 10,
                            color: UiTheme.COLOR_999999,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "请输入费率",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: UiTheme.COLOR_999999,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.5),
                            child: Text(
                              "%",
                              style: TextStyle(
                                fontSize: 14,
                                color: UiTheme.COLOR_333333,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                color: UiTheme.COLOR_E6E6E6,
              ),
              Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/quick_pay.png",
                          height: 22,
                          width: 22,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.5,
                          ),
                          child: Text(
                            "支付宝",
                            style: TextStyle(
                              fontSize: 14,
                              color: UiTheme.COLOR_333333,
                            ),
                          ),
                        ),
                        Text(
                          "(支付金额>1000)",
                          style: TextStyle(
                            fontSize: 10,
                            color: UiTheme.COLOR_999999,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "请输入费率",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: UiTheme.COLOR_999999,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.5),
                            child: Text(
                              "%",
                              style: TextStyle(
                                fontSize: 14,
                                color: UiTheme.COLOR_333333,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.maxFinite,
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          height: 55,
          child: RaisedButton(
            child: Text(
              "确定",
              style: TextStyle(fontSize: 16, color: UiTheme.COLOR_WHITE),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
