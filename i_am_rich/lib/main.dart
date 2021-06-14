import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("I Am Rich"),
          ),
          body: Center(
            child: Image(image: AssetImage("images/diamond.png")),
          )),
    ),
  );
}
