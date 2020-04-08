import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyContent();
  }
}

class MyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("flutter程序"),
              centerTitle: true,
            ),
            body: MyContentBody()));
  }
}

class MyContentBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyContentBodyState();
  }
}

class MyContentBodyState extends State<MyContentBody> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: flag,
            onChanged: (value) {
              setState(() {
                flag = value;
              });
            },
          ),
          Text("隐私协议"),
        ],
      ),
    );
  }
}
