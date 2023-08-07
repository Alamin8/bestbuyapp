

import 'package:best_buy/model/user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserViewModel with ChangeNotifier {

  Future<bool> saveUser(UserModel user) async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('accesstoken', user.accesstoken.toString());
    notifyListeners();
    return true;
  }


  Future<UserModel> getUser() async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final String? accesstoken = sp.getString('accesstoken');

    return UserModel(
      accesstoken: accesstoken.toString()
    );
  }

  Future<bool> remove() async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove('accesstoken');
    return sp.clear();
  }


}