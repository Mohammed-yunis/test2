import 'package:flutter/material.dart';
import 'package:test1/layout/login.dart';
import 'package:test1/layout/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() =>MyAppState();
}

class MyAppState extends State {
  bool visibility1=true;
  bool visibility2=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home:const Register(),
    );
  }
}
