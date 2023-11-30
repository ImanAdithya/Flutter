import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
  ),
);


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home:HomePage() ,
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
            title: const Text("HOME",style: TextStyle(color: Colors.black,fontSize: 25.0,fontWeight: FontWeight.bold)),

            leading: const IconButton(
              icon: Icon(Icons.menu,size: 40.0,color: Colors.black,),
              onPressed:null,//onPressed: ()=> funtion(),
            ),

            actions: const [
              IconButton(
                  onPressed: null,
                  icon: Icon(Icons.search,size: 30.0,color: Colors.black,)
              ),

              IconButton(
                  onPressed: null,
                  icon: Icon(Icons.more_vert,size: 30.0,color: Colors.black,)
              ),
            ],

            flexibleSpace: Image.asset(
              "assets/back.jpg",
              fit: BoxFit.cover,
            ),

            bottom:PreferredSize(child: Container(),
                preferredSize: Size.fromHeight(70.0)),


        ),


      ),
    );
  }
}
