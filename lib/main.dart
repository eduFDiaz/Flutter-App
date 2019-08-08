import 'package:flutter/material.dart';

Future main(List<String> args) async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                ),),
                
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
