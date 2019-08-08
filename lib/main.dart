import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Future main(List<String> args) async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("EasyList"),
            ),
            body: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: () {
                      print("clicked!\n");
                    },
                    child: Text("Add Product"),
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/Food.jpg"),
                      Text("Food Paradise"),
                    ],
                  ),
                ),
              ],
            )));
  }
}
