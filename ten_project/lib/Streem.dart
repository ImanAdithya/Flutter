import 'dart:async';

import 'package:flutter/material.dart';

class test3 extends StatefulWidget {
  @override
  State<test3> createState() => _test3();
}

class _test3 extends State<test3> {
  StreamController streamController=StreamController();

  @override
  void initState() {
    super.initState();
    addStreamData();
  }

  void addStreamData() async{
    for(var i=0 ; i<10 ; i++){
      await Future.delayed(Duration(seconds: 2));
      streamController.sink.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream"),
      ),

      body:Center(
        child: StreamBuilder(
          stream: streamController.stream,
          builder: (context, snapshot) {
            if(snapshot.hasError){
              return Text("ERROR");
            }else if(snapshot.connectionState==ConnectionState.waiting){
              return CircularProgressIndicator.adaptive();//waiting progress
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "STREAM",
                  style: TextStyle(fontSize: 22.0),
                ),
                Text(
                  '${snapshot.data}',
                     style: TextStyle(fontSize: 40.0),
                )
              ],
            );
          }
        ),
      ),
    );
  }
}
