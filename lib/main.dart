



import 'package:counter_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/counter_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }



}
