import 'dart:convert';

import 'package:best_buy/models/product.dart';
import 'package:best_buy/res/app_url.dart';
import 'package:http/http.dart' as http;


class FetchProduct{
  var data = [];
  List<Product> results = [];

  Future<List<Product>>getProductList() async{
    var url = Uri.parse(AppUrl.getMrpProductUrl);
    var response = await http.get(url);
    try{
      if(response.statusCode == 200){
        data = jsonDecode(response.body);
        print(data.length);
        results = data.map((e)=>Product.fromJson(e)).toList();

        // results = data.map((e) => Product.fromJson(e)).toList();
         //print(results);
      }else{
        print('API fetch error');
      }
    } on Exception catch(e){
      print('error: $e');
    }
    //print(results);
    return results;
  }

}