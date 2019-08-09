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

  Widget _buildProductList(){
    // Lets conditionally render the content dependening
    // on the size of products (images)
    Widget productCard;
    if (products.length > 0){
        productCard = ListView.builder(
            itemBuilder: _buildProductItem,
            itemCount: products.length,
          );
    }
    else{
        productCard = Center(child: Text("No images in the list add one  "));
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    //Conditional rendering
    return _buildProductList();
  }
}
 