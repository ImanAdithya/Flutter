import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

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
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return Scaffold(

     appBar: AppBar(
       backgroundColor: Colors.red,
       title: Text("COLUMN AND ROW"),
     ),

     body: Container(
       height: 300.0,
       color: Colors.pink,
       child: const Row(
         children: [
           Text("Text 1",style: TextStyle(fontSize: 20.0),),
           Text("Text 2",style: TextStyle(fontSize: 20.0),),
           Text("Text 3",style: TextStyle(fontSize: 20.0),),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Text 1",style: TextStyle(fontSize: 20.0),),
              Text("Text 2",style: TextStyle(fontSize: 20.0),),
              Text("Text 3",style: TextStyle(fontSize: 20.0),),
            ],
           )
         ],
       ),
     ),


   );
  }
}



