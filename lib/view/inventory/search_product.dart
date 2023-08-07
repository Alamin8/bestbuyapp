import 'package:best_buy/data/response/inventory_product_api.dart';
import 'package:flutter/material.dart';

class SearchProduct extends SearchDelegate{
  FetchProduct _productList = FetchProduct();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }


  @override
  Widget buildResults(BuildContext context) {
    return Text("df");
  }


  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Search User'),
    );
  }
}
