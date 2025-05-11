import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:post_api/api_service.dart';
import 'package:post_api/screen_two.dart';

import 'model.dart';
class ScreenOne extends StatefulWidget{
  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  PostAPi? postAPi = PostAPi();
  TextEditingController name  = TextEditingController();
  TextEditingController job  = TextEditingController();


  @override
  Widget build(BuildContext context) {



    
    
    
    
    
    
    







  return Scaffold(appBar: AppBar(title:postAPi!.name==null? Text("Screen One"): Text("Screen One ${postAPi!.name}"),

    backgroundColor: Colors.deepPurple,
  ),
    body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextField(
          controller:name,
          decoration: InputDecoration(
            hintText: "Enter Your Name"
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          controller:job,
          decoration: InputDecoration(
              hintText: "Enter Your job"
          ),

        ),
          SizedBox(height: 30,),
          SizedBox(width: double.infinity,child: ElevatedButton(
            onPressed: () {
              ApiService()
                  .getPostApi(name.text.toString(), job.text.toString())
                  .then((onValue) {
                if (onValue != null) {
                  setState(() {
                    postAPi = onValue;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenTwo(
                        name: postAPi!.name.toString(),
                        id: postAPi!.id.toString(),
                        createdAt: postAPi!.createdAt.toString(),
                        job: postAPi!.job.toString()
                      ),
                    ),
                  );
                }
              }).onError((error, stackTrace) {
                print("Error aaya: $error");
                setState(() {
                  postAPi = null;
                });
              });
            },
            child: Text("Go To Screen Two"),
          ))

      ],),
    ),
  );
  }
}