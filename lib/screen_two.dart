import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget{
  final String id,job,name,createdAt;

  ScreenTwo({super.key, required this.id, required this.job, required this.name, required this.createdAt});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context, ) {
  return Scaffold(appBar: AppBar(title: Text("ScreenTwo"),),
    body:Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(" Id :${widget.name}" ),
        Text("Job  :${widget.job}"),
        Text("ID  :${widget.id}"),
        Text("Creative Time  :${widget.createdAt}")
      ],),
    )
  );
  }
}