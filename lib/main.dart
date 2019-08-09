import 'package:flutter/material.dart';
import './products_manager.dart';

//import 'package:flutter/rendering.dart';

Future main(List<String> args) async {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //debugShowMaterialGrid: true,
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
            body: ProductsManager(),
            ));
  }
}