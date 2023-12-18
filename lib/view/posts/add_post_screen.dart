

import 'package:flutter/material.dart';


class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
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
            SizedBox(

              height: 30,

            ),


            // text_form_field
            TextFormField(

              maxLines: 5,

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
                onPressed: (){



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
