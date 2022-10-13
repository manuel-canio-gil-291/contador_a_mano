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

    void increase() {
      counter++;
      setState(() {});
    }

    void decrease() {
      counter--;
      setState(() {});
    }

    void reset() {
      counter = 0;
      setState(() {});
    }
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Column(),
            Column(children: [const Text('Numero de clicks'),
          Text('$counter', style: textStyle)],)
          
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ), 
      );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.exposure_plus_1_outlined),
        ),

        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.exposure_zero),
        ),
        
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.exposure_minus_1_outlined), 
        ),

        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.restart_alt)
        )
      ],
    );
  }
} 