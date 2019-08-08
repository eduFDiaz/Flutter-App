import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget{
  //This is a function passed from the ProductsManager as a
  //reference so we can pass data from ProductControl Up to it
  final Function addProduct;
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              addProduct(DateTime.now().toString());
            },
            child: Text("Add Picture"),
          );
  }
}