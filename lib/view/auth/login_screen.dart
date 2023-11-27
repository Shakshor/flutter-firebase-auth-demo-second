
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_firebase_auth_demo_second/Utils/Utils.dart';
import 'package:flutter_firebase_auth_demo_second/posts/post_screen.dart';
import 'package:flutter_firebase_auth_demo_second/view/auth/signup_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  // key_for_form
  final _loginFormKey = GlobalKey<FormState>();
  bool textLoading = false;

  // field_controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  // firebase_auth_initialize
  final FirebaseAuth _auth = FirebaseAuth.instance;



  // login_function_call
  void login(){

    setState(() {
      textLoading = true;
    });


    _auth.signInWithEmailAndPassword(
        email: emailController.text.toString(),
        password: passwordController.text.toString(),


    ).then((value) {

      setState(() {
        textLoading = false;
      });

      // show_success_msg
      Utils().showSuccessMessage(value.user!.email.toString());


      // navigate_to_another_screen
      Navigator.push(context, MaterialPageRoute(builder: (context) => const PostScreen() ));

    }).onError((error, stackTrace){

      setState(() {
        textLoading = false;
      });

      debugPrint(error.toString());
      // show_error_msg
      Utils().showErrorMessage(error.toString());

    });

  }





  // disposing_the_controller
  @override
  void dispose() {

    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: () async {

        SystemNavigator.pop();
        return true;

      },

      child: Scaffold(

          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Login Screen'),
            titleTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 24
            ),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
          ),


          // main body
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),


            child: Column(


              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [

                Form(

                  key: _loginFormKey,

                  child: Column(


                    children: [

                      // email_field
                      TextFormField(


                        decoration: InputDecoration(

                          hintText: 'Enter Email',
                          fillColor: Colors.blueGrey.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(
                              Icons.email_outlined
                          ),


                          border:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide.none
                          ),


                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Colors.deepPurple,
                            ),

                          ),

                        ),

                        controller: emailController,

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Email';
                          }
                          return null;
                        },

                      ),



                      // height
                      const SizedBox(

                        height: 20,

                      ),


                      // password_field
                      TextFormField(


                        obscureText: true,

                        decoration: InputDecoration(

                          hintText: 'Enter Password',
                          fillColor: Colors.blueGrey.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(
                              Icons.lock_outlined
                          ),


                          border:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:BorderSide.none
                          ),


                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Colors.deepPurple,
                            ),

                          ),

                        ),

                        controller: passwordController,

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Password';
                          }
                          return null;
                        },

                      ),





                      // height
                      const SizedBox(

                        height: 50,

                      ),




                      // log_in_button
                      MaterialButton(
                          onPressed: (){


                            if(_loginFormKey.currentState!.validate()){

                              login();

                            }


                          },

                          minWidth: double.infinity,
                          height: 45,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),

                          color: Colors.deepPurple,
                          child: textLoading ?
                          const CircularProgressIndicator(
                            strokeWidth: 3,
                            color: Colors.white,
                          )
                              :
                          const Text('Login',style: TextStyle(
                              color: Colors.white
                          ),)
                      ),


                      // height
                      const SizedBox(

                        height: 20,

                      ),



                      // navigate_to_sign_up_button
                      Row(

                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [

                          const Text("Don't have an account?"),

                          TextButton(
                            onPressed: (){

                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen() ));

                            },

                            child: const Text("Signup", style: TextStyle(
                                fontSize: 16
                            ),
                            ),
                          )

                        ],

                      ),








                    ],


                  ),




                ),





              ],

            ),
          )









      ),
    );
  }
}
