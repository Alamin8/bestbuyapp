

import 'package:best_buy/data/network/BaseApiServices.dart';
import 'package:best_buy/data/network/NetworkApiService.dart';
import 'package:best_buy/res/app_url.dart';

class AuthRepository {

  BaseApiServices _apiServices = NetworkApiService();


  //login
  Future<dynamic> LoginApi(dynamic data) async {
   try{
     dynamic response = await _apiServices.getPostApiResponse(AppUrl.loginUrl, data);
     return response;
   }catch(e){
     throw e;
   }

  }


  //Register
  Future<dynamic> RegisterApi(dynamic data) async {
    try{
      dynamic response = await _apiServices.getPostApiResponse(AppUrl.registerUrl, data);
      return response;
    }catch(e){
      throw e;
    }

  }


}