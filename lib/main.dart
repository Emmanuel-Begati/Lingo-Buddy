import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('LingoBuddy'),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    body: const Center(
      child: Text(
          'Hello Linguist!',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey,
.          ),

      ),
    ),
    floatingActionButton: FloatingActionButton(
      child: Text('learn'),
      onPressed: (){},
      backgroundColor: Colors.redAccent[200],
    ),
    backgroundColor: Colors.blue[100],
  ),
));
