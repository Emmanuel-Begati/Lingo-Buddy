import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('LingoBuddy'),
      centerTitle: true,
    ),
    body: const Center(
      child: Text('Hello Ninjas!'),
    ),
    floatingActionButton: FloatingActionButton(
      child: Text('click'),
      onPressed: (){},
      backgroundColor: Colors.blue,
    ),
    backgroundColor: Colors.amber,
  ),
));
