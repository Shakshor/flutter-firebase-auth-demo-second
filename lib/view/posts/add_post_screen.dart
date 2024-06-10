

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth_demo_second/Utils/Utils.dart';


class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {

  // post_field_controller
  final TextEditingController _postController = TextEditingController();

  // firebase_real_time_db_initialize
  final  databaseRef = FirebaseDatabase.instance.ref('Post');
  bool loading = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Add Post'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),


      // main_body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(

          children: [

            // height
            const SizedBox(

              height: 30,

            ),

            // text_form_field
            TextFormField(
              maxLines: 5,
              controller: _postController,
              decoration: const InputDecoration(
                hintText: 'Write Here....',

                border: OutlineInputBorder(),
              ),


            ),


            // height
            const SizedBox(

              height: 30,

            ),


            // add_post_btn
            MaterialButton(


                onPressed: ()  {


                  databaseRef.child('1').set({

                    'id' : 1,
                    'title' : _postController.text.toString(),

                  }).then((value){
                    Utils().showSuccessMessage('Post Added');
                  }).onError((error, stackTrace){
                    Utils().showSuccessMessage('${error.toString()}');
                    });
                  },

                minWidth: 200,
                height: 45,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),

                color: Colors.deepPurple,
                child: const Text('Add Post',style: TextStyle(
                    color: Colors.white
                ),)
            ),
          ],
        ),
      ),




    );
  }
}
