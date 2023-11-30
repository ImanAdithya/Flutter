import 'package:flutter/material.dart';


class Practise_3 extends StatefulWidget {
  @override
  State<Practise_3> createState() => _Practise_3();
}

class _Practise_3 extends State<Practise_3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practise 3"),
      ),

      body:Container(
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.blue,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.red,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.yellow,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.green,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.orange,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
