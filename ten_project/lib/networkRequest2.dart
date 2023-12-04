import 'package:flutter/material.dart';

class test2 extends StatefulWidget {
  @override
  State<test2> createState() => _test2();
}

class _test2 extends State<test2> {

  Future<String> getData() async{
    String email=await Future.delayed(Duration(seconds: 3), () {
      return "ImaAdithya@gmail.com";
    });
    return email;
  }

  Future<void> getNetWorkRequeest() async{
    print( await getData());
  }

  @override
  void initState(){
    super.initState();
   getNetWorkRequeest();
    print("Other COdes");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asynco programming"),
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
