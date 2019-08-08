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
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("List of Pictures"),
            ),
            body: ListView(
              children: [ProductsManager(DateTime.now().toString())],
            )));
  }
}