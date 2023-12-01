import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

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
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Demo"),
      ),
      body: const Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 8,
                style: TextStyle(
                  fontSize: 15.0,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search)),
                // cursorColor: Colors.black,
                // enabled: false,
                // autofocus: true,
                // obscureText: true,//use for password field
                // keyboardType: TextInputType.number//limited for number keyboard,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 10,
                style: TextStyle(fontSize: 22.0),
                // autofocus: true,
                // obscureText: true,//use for password field
                // keyboardType: TextInputType.number//limited for number keyboard,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
