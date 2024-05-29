import 'package:flutter/material.dart';

class Frist_Page extends StatelessWidget {
  const Frist_Page({super.key});



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('home Page '),
      ),
      body: const Center(
        child: Text(
          "HOW i am can assisant you !!!"
        ),
      ),
    );
  }
}
