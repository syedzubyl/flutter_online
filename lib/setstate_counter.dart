import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Widget Example'),
        ),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Counter: $_counter',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 20),

        Center(
          child: Column(
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    child: Text('Increment Counter'),
                  ),
                  ElevatedButton(onPressed: _decrementCounter,
                      child: Text('Decrement Counter'))
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}