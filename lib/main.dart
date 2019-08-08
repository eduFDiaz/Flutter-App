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
  List<String> _products = ['Thai Food'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("EasyList"),
            ),
            body: ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _products.add('Mexican Food');
                      });
                    },
                    child: Text("Add Product"),
                  ),
                ),
                Column(
                  children: _products
                      .map((element) => Card(
                            child: Column(
                              children: <Widget>[
                                Image.asset("assets/images/Food.jpg"),
                                Text(element),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ],
            )));
  }
}
