import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);

  // This function is used to build the ListView efficiently
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(
            'https://picsum.photos/300/200/?random&t=' +
                new DateTime.now().toString(),
          ),
          Text(products[index]),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}
/* return ListView(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://picsum.photos/300/200/?random&t=' + new DateTime.now().toString(),
                    ),
                    Text(element),
                  ],
                ),
              ))
          .toList(),
    ); */
