


import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth_demo_second/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // initialize_services_object
  SplashServices splashServices = SplashServices();



  // check_the_condition_different_routes
  @override
  void initState() {

    splashServices.isLogin(context);

    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Center(
        child: Text('Firebase Authentication Screen',
          style: TextStyle(
              fontSize: 26
          ),
        ),
      ),


    );
  }
}