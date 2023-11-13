
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth_demo_second/view/auth/login_screen.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {


  // key_for_form
  final _signupFormKey = GlobalKey<FormState>();

  // field_controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  // firebase_auth_initialize
  final FirebaseAuth _auth = FirebaseAuth.instance;



  // disposing_the_controller
  @override
  void dispose() {

    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text('Signup Screen'),
          titleTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 24
          ),

          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
              size: 24,
            ),
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

                key: _signupFormKey,

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
                        onPressed: () async {


                          if(_signupFormKey.currentState!.validate()){


                            // await _auth.createUserWithEmailAndPassword(
                            //   email: emailController.text.toString(),
                            //   password: passwordController.text.toString(),
                            // );

                          }


                        },

                        minWidth: double.infinity,
                        height: 45,

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),

                        color: Colors.deepPurple,
                        child: const Text('Signup',style: TextStyle(
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

                        const Text("Already have an account?"),

                        TextButton(
                          onPressed: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen() ));

                          },

                          child: const Text("Login", style: TextStyle(
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









    );
  }
}
