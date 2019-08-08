import 'package:flutter/material.dart';
import './products.dart';

class ProductsManager extends StatefulWidget {
  final String startingProduct;
  ProductsManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [];

  @override
  void initState() {//We add the value passed from
    _products.add(widget.startingProduct);//the parent
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
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
