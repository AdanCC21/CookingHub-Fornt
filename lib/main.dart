// import 'package:app_1/screens/sc2.dart';
import 'package:flutter/material.dart';
import 'package:testing_1/screens/sc1.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  
  // El key es como un id del widget
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        
        home:chatBot(),
    );
  }

}