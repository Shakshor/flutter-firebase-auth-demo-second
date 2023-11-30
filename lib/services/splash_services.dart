import 'dart:async';


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth_demo_second/view/auth/login_screen.dart';
import 'package:flutter_firebase_auth_demo_second/view/posts/post_screen.dart';


class SplashServices {


  void isLogin(BuildContext context){

    // initialize_firebase_auth
    final FirebaseAuth auth = FirebaseAuth.instance ;

    // check_user_logged_in
    final user = auth.currentUser;


    // condition_firebase
    if(user != null){


      Timer(const Duration(seconds: 3), (){

        Navigator.push(context, MaterialPageRoute(builder: (context) => const PostScreen() ));

      });




    }
    else{

      Timer(const Duration(seconds: 3), (){

        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen() ));

      });


    }




  }


}