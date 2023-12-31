import 'package:flutter/material.dart';
import 'package:seven_project/screens/homePage.dart';


class SecondScreen extends StatelessWidget {

   String text="x";

  SecondScreen(String text){
      this.text=text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Second Screen App Bar",
            style: TextStyle(fontSize: 20.0),
        ),
        leading: IconButton(
          icon:Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context,MyHomePage(title:"",));
          },
        ),
      ),
      body:  Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Text(
               text,
               style:TextStyle(fontSize: 30.0) ,
            ),
          ],
        ),
      ),
    );
  }
}
