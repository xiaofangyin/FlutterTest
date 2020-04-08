import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("商品列表")),
        body: MyHomePageWidget(),
      ),
    );
  }
}

class MyHomePageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePageWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("+"),
              color: Colors.pink,
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
            ),
            RaisedButton(
              child: Text("-"),
              color: Colors.purple,
              onPressed: () {
                setState(() {
                  _counter--;
                });
              },
            )
          ],
        ),
        Text(
          "当前计数：$_counter",
          style: TextStyle(fontSize: 24),
        )
      ],
    );
  }
}
