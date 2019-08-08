import 'package:flutter/material.dart';
import './products.dart';

class ProductsManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [DateTime.now().toString()];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          child: RaisedButton(
            color: Color.fromARGB(0, 0, 0, 250),
            onPressed: () {
              setState(() {
                _products.add(DateTime.now().toString());
              });
            },
            child: Text("Add Picture"),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
