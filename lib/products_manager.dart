import 'package:first_app/product_control.dart';
import 'package:flutter/material.dart';
import './products.dart';

class ProductsManager extends StatefulWidget {
  final String startingProduct;
  ProductsManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [];

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  void initState() {
    if (widget.startingProduct != null) {
      //We add the value only if is passed from the parent
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(5.0),
            child:
                ProductControl(_addProduct) //this is a reference to a function
            // so we can pass date from the child ProductControl
            ),
        Expanded(
            child: Products(
                _products)) //Allows the ListView in products to get all the height
      ],
    );
  }
}
