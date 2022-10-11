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
          children: [
          const Text('Numero de clicks'),
          Text('$counter', style: textStyle)
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const CustomFloatingActions(), 
      );
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.exposure_plus_1_outlined),
              ),

              FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.exposure_outlined),
              ),
              
              FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.exposure_minus_1_outlined), 
              ),
            ],
          ),
      ],
    );
  }
} 