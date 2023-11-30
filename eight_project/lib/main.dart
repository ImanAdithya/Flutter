import 'package:eight_project/practise_2.dart';
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
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: Practise_2(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
