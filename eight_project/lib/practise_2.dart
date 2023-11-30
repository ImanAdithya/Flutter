import 'package:flutter/material.dart';

class Practise_2 extends StatefulWidget {
  @override
  State<Practise_2> createState() => _Practise_2();
}

class _Practise_2 extends State<Practise_2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practise 2"),
      ),

      body:ListView(
        children: <Widget>[
          Container(
            height: 200.0,
            color: Colors.blue,
          ),
          Container(
            height: 200.0,
            color: Colors.red,
          ),
          Container(
            height: 200.0,
            color: Colors.yellow,
          ),
          Container(
            height: 200.0,
            color: Colors.green,
          ),
          Container(
            height: 200.0,
            color: Colors.orange,
          ),
          Container(
            height: 200.0,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
