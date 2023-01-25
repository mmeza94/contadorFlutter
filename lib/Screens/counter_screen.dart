


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int counter = 0 ;

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 =  TextStyle(fontSize: 30);

    return  Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Counter Screen')),
        elevation: 0),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[ const Text('Cantidad de Clicks',style: fontSize30,)
                              ,Text( '$counter',style: fontSize30)]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.plus_one_outlined),
            onPressed: ()  {
              counter++;
              setState((){});
              },
            ),

          //const SizedBox(width: 40),


          FloatingActionButton(
            child: const Icon(Icons.exposure_zero),
            onPressed: ()  {
              counter=0;
              setState((){});
              },
            ),

          
          //const SizedBox(width: 40),

          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: ()  {
              counter--;
              setState((){});
              },
            ),
        ],
      ),
    );
  }
}