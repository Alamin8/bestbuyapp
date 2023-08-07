import 'package:best_buy/utils/routes/routes_name.dart';
import 'package:best_buy/view/home_screen.dart';
import 'package:best_buy/view/inventory/inventory_action_screen.dart';
import 'package:best_buy/view/inventory/inventory_new_posting.dart';
import 'package:best_buy/view/login_screen.dart';
import 'package:best_buy/view/register_screen.dart';
import 'package:best_buy/view/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){

    switch(settings.name){

      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context)=> const LoginScreen());
      case RoutesName.registerScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const RegisterScreen());


      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const SplashScreen());
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context)=> const HomeScreen());


      case RoutesName.inventoryActionScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const InventoryActionScreen());
      case RoutesName.inventoryNewPostiog:
        return MaterialPageRoute(builder: (BuildContext context)=> const InventoryNewPosting());

      default:
        return MaterialPageRoute(builder: (_){
          return Scaffold(
            body: Center(
              child: Text('No route Defiend'),
            ),
          );
        });
    }
  }
}
