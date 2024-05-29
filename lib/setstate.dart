import 'package:flutter/material.dart';

class IndexCounter extends StatefulWidget {
  const IndexCounter({super.key});

  @override
  State<IndexCounter> createState() => _IndexCounterState();
}

class _IndexCounterState extends State<IndexCounter> {
  int _current = 0;
  final List <String> _items = [
    'items1',
    'items2',
    'items3',
    'items4',
    'items5'
  ];

  void Increament() {
    setState(() {
      if(_current < _items.length -1){
        _current++;
        print('counter value : $_current');
      }
    });
  }

  void Decrement() {
    setState(() {
      if (_current > 0) {
        _current--;
        print('counter value : $_current');
      }
    });}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Form Index Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_items[_current],
              style: const TextStyle(
                  fontSize: 28,
                  color: Colors.cyan
              ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: Decrement,
                  icon: const Icon(Icons.arrow_back),),
                IconButton(onPressed: Increament,
                    icon:const  Icon(Icons.arrow_forward))
              ],
            )
          ],
        ),
      ),
    );
  }
}

