import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(fontSize: 30.0);
    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          Text('Numero de clicks', style: textStyle),
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
          print('Hola Mundo');
          counter++;  },
      ),
    );
  }
} 