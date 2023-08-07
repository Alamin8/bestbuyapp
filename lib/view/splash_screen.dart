import 'dart:async';

import 'package:best_buy/view_model/services/splash_services.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices  splashServices = SplashServices();

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      splashServices.checkAuthentication(context);
    });


  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffED1C24),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/best_buy_small .png',
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.0),
            CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
          ],
        ),
      ),
    );
  }
}
