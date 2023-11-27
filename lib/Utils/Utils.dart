import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Utils{



  // show_error_message
  showErrorMessage(errorMsg){

    Fluttertoast.showToast(
        msg: errorMsg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 14.0
    );

  }




  // show_success_message
  showSuccessMessage(successMsg){

    Fluttertoast.showToast(
        msg: successMsg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 14.0
    );

  }






}