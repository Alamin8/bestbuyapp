
import 'package:best_buy/respository/auth_repository.dart';
import 'package:best_buy/utils/routes/routes_name.dart';
import 'package:best_buy/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class AuthViewModel with ChangeNotifier {

  final _myRepo = AuthRepository();

  bool _loading = false;
  bool get loading => _loading;

  setLoading (bool value){
    _loading = value;
    notifyListeners();
  }


  //login
  Future<void> loginApi(dynamic data, BuildContext context) async{
     setLoading(true);
    _myRepo.LoginApi(data).then((value){
      setLoading(false);
      Utils.flushBarSuccessMessage("Login Success!", context);
      Navigator.pushNamed(context, RoutesName.home);

      if(kDebugMode){
        print(value.toString());
      }
    }).onError((error, stackTrace){
      setLoading(false);
      if(kDebugMode){
        print(error.toString());
        Utils.flushBarErrorMessage(error.toString(), context);
      }
    });


  }


  //Register
  Future<void> registerApi(dynamic data, BuildContext context) async{
    setLoading(true);
    _myRepo.RegisterApi(data).then((value){
      setLoading(false);
      Navigator.pushNamed(context, RoutesName.login);
      Utils.flushBarSuccessMessage("Register Success!", context);

      if(kDebugMode){
        print(value.toString());
      }
    }).onError((error, stackTrace){
      setLoading(false);
      if(kDebugMode){
        print(error.toString());
        Utils.flushBarErrorMessage(error.toString(), context);
      }
    });


  }

}

