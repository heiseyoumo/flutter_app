import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        //蓝色主题
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage("我是你大爷啊"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage(this.title);

  @override
  _MyHomePage createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  int count = 0;

  @override
  void initState() {
    print("你大爷啊1");
    super.initState();
  }

  void increase() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        leading: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              "数字:" + "$count",
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Increment',
        onPressed: () {
          setState(() {
            count++;
            print(count);
          });
        },
      ),
    );
  }
}
