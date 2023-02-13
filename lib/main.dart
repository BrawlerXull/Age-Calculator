import 'package:agecalculator/tuesday.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'loginpage.dart';
import 'monday.dart';
import 'todolist.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context)=> HomePage(),
        "/login":(context)=> LoginPage(),
        "/monday":(context)=> Monday(),
        "/tuesday":(context)=> Tuesday(),
        "/todo":(context)=> ToDoList(),
      },


    );
  }
}


