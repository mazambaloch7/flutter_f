
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Utils{

  static void fieldFocuseChange(
      BuildContext context,
      FocusNode currentFocus,
      FocusNode nextFocus,
      ) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }


 static toastMessage(String message){
    Fluttertoast.showToast( msg: message);
  }



  static void flushBarErrorMessage(String message, BuildContext context){

   showFlushbar(context: context, flushbar: Flushbar(
     message: message,
     backgroundColor: Color(0xFFF80202),
     title: "Error message",
     messageColor: Colors.black,
     duration: Duration(seconds: 3),
   )..show(context),
   );


  }

  static void flushBarSuccessMessage(String message, BuildContext context){

   showFlushbar(context: context, flushbar: Flushbar(
     message: message,
     backgroundColor: Color(0xf26a113),
     title: "Success message",
     messageColor: Colors.black,
     duration: Duration(seconds: 3),
   )..show(context),
   );


  }


}