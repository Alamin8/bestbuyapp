import 'package:best_buy/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

import 'package:best_buy/model/user_model.dart';
import 'package:best_buy/view_model/user_view_model.dart';
import 'package:flutter/foundation.dart';

class SplashServices {
  Future<UserModel> getUserData() => UserViewModel().getUser();

  void checkAuthentication(BuildContext context) async {
    getUserData()
        .then((value) => {

              if (value.accesstoken.toString() == 'null' ||
                  value.accesstoken.toString() == ''){
                Navigator.pushNamed(context, RoutesName.login)
              }
              else{
                Navigator.pushNamed(context, RoutesName.home)
              }
            });

  }
}
