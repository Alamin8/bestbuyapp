import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Utils {

  static void fieldFocusChange(BuildContext context , FocusNode current , FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }


  static toastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
      backgroundColor: Colors.deepOrangeAccent,
      textColor: Colors.black87
    );
  }

  static void flushBarSuccessMessage (String message, BuildContext context){
    showFlushbar(context: context,
      flushbar: Flushbar(
        message: message,
        forwardAnimationCurve:Curves.decelerate,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 19),
        backgroundColor: Colors.green,
        reverseAnimationCurve: Curves.easeInOut,
        positionOffset: 20,
        icon: Icon(Icons.error , size: 28 , color: Colors.white,),
        borderRadius: BorderRadius.circular(8),
        flushbarPosition: FlushbarPosition.TOP,
        messageColor: Colors.white,
        duration: Duration(seconds: 3),
      )..show(context),
    );
  }

  static void flushBarErrorMessage (String message, BuildContext context){
    showFlushbar(context: context,
        flushbar: Flushbar(
          message: message,
          forwardAnimationCurve:Curves.decelerate,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 19),
          backgroundColor: Colors.deepOrangeAccent,
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
          icon: Icon(Icons.error , size: 28 , color: Colors.white,),
          borderRadius: BorderRadius.circular(8),
          flushbarPosition: FlushbarPosition.TOP,
          messageColor: Colors.white,
          duration: Duration(seconds: 3),
        )..show(context),
    );
  }
  static snackBar(String message, BuildContext context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            backgroundColor: Colors.deepOrangeAccent,
            content: Text(message ))
    );
  }

}


//Uses process

// Utils.snackBar("Clicked", context);
// Utils.flushBarErrorMessage("Login Clicked", context);
// Utils.toastMessage("Login Clicked");