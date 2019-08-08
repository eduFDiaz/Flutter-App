import 'package:flutter/material.dart';
import './products_manager.dart';

Future main(List<String> args) async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("EasyList"),
            ),
            body: ListView(
              children: [ProductsManager(DateTime.now().toString())],
            )));
  }
}