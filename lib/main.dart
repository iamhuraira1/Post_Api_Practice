import 'package:flutter/material.dart';
import 'package:post_api/screen_one.dart';
import 'package:post_api/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

/// ye m check kar raha hon agr m nain m 1 line likhong aor usko commit karke push karonga tw wo line visible hogi ya nahi
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ScreenOne()
    );
  }
}


