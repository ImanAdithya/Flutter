import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Second Screen App Bar",
            style: TextStyle(fontSize: 20.0),
        ),
      ),
      body: const Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Text(
              "Second Screen Body",
               style:TextStyle(fontSize: 30.0) ,
            ),
          ],
        ),
      ),
    );
  }
}
