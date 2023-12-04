import 'package:flutter/material.dart';

class test extends StatefulWidget {
  @override
  State<test> createState() => _test();
}

class _test extends State<test> {

  void getData() async{
    await Future.delayed(Duration(seconds: 3),(){
      print("ImaAdithya@gmail.com");
    });

    Future.delayed(Duration(seconds: 2),(){
      print("name : Iman , age : 20");
    });
    
    print("Other COdes");
  }

  @override
  void initState(){
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asyncro programming"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "GET DATA",
              style: TextStyle(fontSize: 22.0),
            ),
          ],
        ),
      ),
    );
  }
}
