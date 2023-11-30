
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth_demo_second/Utils/Utils.dart';
import 'package:flutter_firebase_auth_demo_second/view/auth/login_screen.dart';


class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {


  // firebase_auth_initialize
  final FirebaseAuth _auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: const Text('Post'),
        backgroundColor: Colors.blue,
        centerTitle: true,

        // logout_button
        actions: [

          IconButton(

            onPressed: (){

                // logout_method_calling
                // from_firebase_auth
                _auth.signOut().then((value) {


                  // logout_successful_navigate_another_page
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen() ));


                }).onError((error, stackTrace) {

                  Utils().showErrorMessage(error.toString());

                });

                },

              icon: const Icon(Icons.logout_outlined),

          )

        ],

      ),





    );
  }
}
