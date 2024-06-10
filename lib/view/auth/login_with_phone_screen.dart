
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth_demo_second/Utils/Utils.dart';
import 'package:flutter_firebase_auth_demo_second/view/auth/verify_phone_code_screen.dart';



class LoginWithPhoneScreen extends StatefulWidget {
  const LoginWithPhoneScreen({super.key});

  @override
  State<LoginWithPhoneScreen> createState() => _LoginWithPhoneScreenState();
}

class _LoginWithPhoneScreenState extends State<LoginWithPhoneScreen> {


  // phone_num_field_controller
  final TextEditingController _phnFieldController = TextEditingController();


  // firebase_auth_initialize
  final FirebaseAuth auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Login With Phone'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,

        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),
      ),


      body: Padding(

        padding: const EdgeInsets.symmetric(horizontal: 20.0),

        child: Column(

          children: [



            const SizedBox(
              height: 50,
            ),


            TextFormField(

              controller: _phnFieldController,

              decoration: const InputDecoration(

                hintText: '+1 0178 3899 303',

              ),

            ),


            const SizedBox(
              height: 50,
            ),



            // login_with_phone_button
            MaterialButton(

                onPressed: (){

                    // auth.verifyPhoneNumber(
                    //
                    //     verificationCompleted: (_){
                    //
                    //     },
                    //
                    //     // if verification failed, showing the error msg
                    //     verificationFailed: (e){
                    //       Utils().showErrorMessage(e.toString());
                    //     },
                    //
                    //     // if token successful, navigate to verify page
                    //     codeSent: (
                    //
                    //           String verificationId,
                    //           int? verificationToken
                    //
                    //         ){
                    //
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(builder: (context) => VerifyPhoneCodeScreen(
                    //
                    //               verificationId: verificationId
                    //
                    //             )
                    //           )
                    //       );
                    //
                    //     },
                    //
                    //     // if timed out, showing the error msg
                    //     codeAutoRetrievalTimeout: (e){
                    //       Utils().showErrorMessage(e.toString());
                    //     }
                    // );





                  },

                minWidth: double.infinity,
                height: 45,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),

                color: Colors.blueGrey,

                child: const Text('Login',style: TextStyle(
                    color: Colors.white
                ),)
            ),
          ],
        ),
      ),
    );
  }
}
