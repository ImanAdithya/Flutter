import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:seven_project/screens/homePage.dart';
import 'package:seven_project/screens/secondScreen.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       home: const MyHomePage(title: 'Flutter Navigation'),
      // home: SecondScreen(),

      // routes: <String,WidgetBuilder>{
      //   '/second':(context)=>SecondScreen(),
      // },
    );
  }
}

