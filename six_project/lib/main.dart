import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',//All application title what about this project
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),//First preview in your app
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();//statefull widget ekaka class 2i
}

class _MyHomePageState extends State<MyHomePage> {// _MyHomePage ==> private class

  int count=0;

  void increment(){
    setState(() {
      count++;
      print(count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FLUTTER DEMO"),
      ),

      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Button push times',style: TextStyle(fontSize: 30.0),),
            Text('$count',style: const TextStyle(fontSize: 25.0),)
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child:Icon(Icons.add),
      ),

    );
  }
}


