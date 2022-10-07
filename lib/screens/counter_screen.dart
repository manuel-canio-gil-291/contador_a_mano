import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(fontSize: 30.0);
    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          const Text('Numero de clicks'),
          Text('$counter', style: textStyle)
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: Column(
          children: const <Widget> [
            Icon(Icons.add),
            Icon(Icons.remove),
          ],
        ), 
        onPressed: () {

          counter=counter+1;  
          setState(() {}); 
        },
      ),
    );
  }
} 