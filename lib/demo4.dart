import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ListItem2());

class ListItem2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          30, 0, 30, 0),
      height: 88,
      width: 750,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.black12))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '需求面积',
            style: TextStyle(fontSize: 30),
          ),
          Row(
            children: <Widget>[
              //在这里套了个Expanded
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number, //数字键盘
                  maxLines: 1,
                  decoration: InputDecoration(
                      hintText: '请输入需求面积', border: InputBorder.none),
                ),
              ),
              Text('方',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xFF666666),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
