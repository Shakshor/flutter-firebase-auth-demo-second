
import 'package:flutter/material.dart';


class VerifyPhoneCodeScreen extends StatefulWidget {

  final String verificationId;


  const VerifyPhoneCodeScreen({super.key, required this.verificationId});

  @override
  State<VerifyPhoneCodeScreen> createState() => _VerifyPhoneCodeScreenState();
}

class _VerifyPhoneCodeScreenState extends State<VerifyPhoneCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Verify Phone Code'),
        centerTitle: true,
        backgroundColor: Colors.blue,

        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),
      ),


      body: Column(

        children: [



        ],

      ),

    );
  }
}
