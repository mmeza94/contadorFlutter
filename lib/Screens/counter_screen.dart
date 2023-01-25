



import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int counter = 0 ;

void increaseCounter(){
  counter++;
  setState(() {});
}

void decreaseCounter(){
  counter--;
  setState(() {});
}

void resetCounter(){
  counter=0;
  setState(() {});
}



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
      floatingActionButton: CustomFloatingActions(increaseFn: increaseCounter,decreaseFn: decreaseCounter, resetFn: resetCounter),
    );
  }
}






class CustomFloatingActions extends StatelessWidget {


  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key, required this.increaseFn, required this.decreaseFn, required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.plus_one_outlined),
          onPressed:(() { increaseFn(); } )),

        //const SizedBox(width: 40),


        FloatingActionButton(
          child: const Icon(Icons.exposure_zero),
          onPressed:(() { resetFn(); } )),

        
        //const SizedBox(width: 40),

        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed:(() { decreaseFn(); } )),
      ],
    );
  }
}