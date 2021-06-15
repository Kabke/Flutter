import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
        title: Center(child: Text("I Am Poor v1.1")),
      ),
      body: Container(
        height: 2000,
        width: 2000,
        color: Colors.black,
        child: FittedBox(
          child: Image.asset('images/dirt.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  ));
}
