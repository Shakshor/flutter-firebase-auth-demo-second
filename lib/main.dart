import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth_demo_second/view/splash_screen.dart';

Future<void> main()  async {




  WidgetsFlutterBinding.ensureInitialized();

  // Platform.isAndroid ? await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //       apiKey: 'AIzaSyDtpetnwp6GP809MUNIY-v5nZRz1RA7qsY',
  //       appId: '1:437132126999:android:bb0748a658212ed31a2552',
  //       messagingSenderId: '437132126999',
  //       projectId: 'flutter-firebase-auth-demo2',
  //     )
  // ) : await Firebase.initializeApp();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyCa6M8ytcLrbxQFMvBEvWDnc2Dbs38NCdw',
        appId: '1:229464399902:android:76380ff70321da9d828e0f',
        messagingSenderId: '229464399902',
        projectId: 'fir-auth-demo-second-cc845',
      )
  );


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}


