import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("FLUTEER DEMO"),
      ),

      body: Container(
        margin:const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0), //all() = all sides
        padding: const EdgeInsets.only(top: 20.0 ),
        //padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
        //padding: const EdgeInsets.all(30.0),
        //transform: Matrix4.rotationZ(50.0),
        //transform: Matrix4.rotationZ(50.0),
        //alignment: Alignment.bottomRight,
        color: Colors.orange,
        height: 200.0,
        width: double.infinity,
        child: const Text(
          "Container Text" ,
          style: TextStyle(
              fontSize: 25.0
          ),
        ),
      ),

    );
  }
}
