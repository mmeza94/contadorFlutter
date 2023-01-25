


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  
  const HomeScreen({super.key});

  

  @override
  Widget build(BuildContext context) {

    int counter = 0 ;
    
    const TextStyle FontSize30 =  TextStyle(fontSize: 30);

    return  Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Home Screen')),
        elevation: 0),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[ const Text('Cantidad de Clicks',style: FontSize30,)
                              ,Text( '$counter',style: FontSize30)]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => {counter++})
    );
  }

}