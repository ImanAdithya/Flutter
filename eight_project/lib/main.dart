import 'package:eight_project/practise_2.dart';
import 'package:eight_project/practise_3.dart';
import 'package:eight_project/practise_4.dart';
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
      // builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      //home: Practise_2(),
      home: Practise_4(),
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

      body:Container(//full hight ekm gnno
        child: ListView(
          scrollDirection: Axis.vertical,
          children:  <Widget>[
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text("Brightness Auto"),
              subtitle: Text("Change the Brightness"),
              trailing: Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.image),
              title: Text("Change Image"),
              subtitle: Text("Change the Image"),
              trailing: Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.keyboard),
              title: Text("Keyboard Layout"),
              subtitle: Text("Change the Keyboard Layout"),
              trailing: Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.build),
              title: Text("Setting"),
              subtitle: Text("Change Setting"),
              trailing: Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.nature_people),
              title: Text("Near"),
              subtitle: Text("Change the Image"),
              trailing: Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text("Change Image"),
              subtitle: Text("Change the Image"),
              trailing: Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.image),
              title: Text("Change Image"),
              subtitle: Text("Change the Image"),
              trailing: Icon(Icons.menu),
              onTap: (){},
            ),

          ],
        ),
      ),
    );
  }
}
