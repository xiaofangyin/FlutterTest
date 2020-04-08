import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("商品列表")),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MyProductItem("1", "2",
            "http://file06.16sucai.com/2016/0428/cd094f5623151c096b820400fc71eac3.jpg"),
        MyProductItem("3", "4",
            "http://file06.16sucai.com/2016/0425/67a5159babcb1df3ecf68197a513af61.jpg"),
        MyProductItem("5", "6",
            "http://file06.16sucai.com/2016/0425/73e2fc8d7871ae4952ea2789f3f5b24f.jpg"),
        MyProductItem("7", "8",
            "http://file06.16sucai.com/2016/0425/006fb503a3ec0822c2b1a10405b069a8.jpg"),
      ],
    );
  }
}

class MyProductItem extends StatelessWidget {
  final title;
  final subTitle;
  final imgUrl;

  MyProductItem(this.title, this.subTitle, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration:
      BoxDecoration(border: Border.all(width: 5, color: Colors.orange)),
      child: Column(children: <Widget>[
        Text(title),
        Text(subTitle),
        Image.network(
          imgUrl,
          width: 300,
          height: 400,
        ),
        SizedBox(
          height: 10,
        )
      ]),
    );
  }
}
