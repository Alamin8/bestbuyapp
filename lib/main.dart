
import 'package:best_buy/utils/routes/routes.dart';
import 'package:best_buy/utils/routes/routes_name.dart';
import 'package:best_buy/view_model/auth_view_model.dart';
import 'package:best_buy/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (_)=>AuthViewModel()),
          ChangeNotifierProvider(create: (_)=>UserViewModel())
        ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Best Buy',
        // home:  areaManagerDashboard(),
        initialRoute: RoutesName.splashScreen,
        onGenerateRoute: Routes.generateRoute,

      ),
    );
  }
}


















































