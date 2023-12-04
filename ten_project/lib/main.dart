import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:ten_project/NetworkRequest.dart';
import 'package:ten_project/Streem.dart';
import 'package:ten_project/networkRequest2.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // locale: DevicePreview.locale(context),
    //   builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      //home: Practise_2(),
      home:test3(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asynchronous Programming"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Asynchronous Programming',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('CLICK ME'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => test2()),
                  );
                },
              ),

            )
            // RaisedButton(child: Text('GET DATA'), onPressed: () {})
          ],
        ),
      ),
    );
  }
}

