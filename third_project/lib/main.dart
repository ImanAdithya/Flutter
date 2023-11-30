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
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

          appBar: AppBar(
              title: const Text("HOME",style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold)),//Title

              leading: const IconButton(//left sie menu bar
                icon: Icon(Icons.menu,size: 40.0,color: Colors.white,),
                onPressed:null,//onPressed: ()=> funtion(),
              ),

              actions: const [//right size icons
                IconButton(
                    onPressed: null,
                    icon: Icon(Icons.search,size: 30.0,color: Colors.white,)
                ),

                IconButton(
                    onPressed: null,
                    icon: Icon(Icons.more_vert,size: 30.0,color: Colors.white,)
                ),
              ],

              // flexibleSpace: Image.asset(//Give BackGround color to AppBar
              //   "assets/redBack.jpg",
              //   fit: BoxFit.cover,
              // ),

              bottom:const TabBar(//Add Tab Bar Icons
                tabs: [
                  Tab(
                      icon: Icon(Icons.directions_car),
                      text: "Car",
                  ),
                  Tab(
                      icon: Icon(Icons.directions_transit),
                      text:"Train",
                  ),
                  Tab(
                      icon: Icon(Icons.directions_bike),
                      text: "Bike",
                  ),
                ],
              ),

            elevation: 3.0,//Drop Shadow

            backgroundColor:Colors.pink ,//Give b
          ),
          
          body: TabBarView(
            children: [
              tab1(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),


        ),
      ),
    );
  }
}


Widget tab1(){
  return Container(
    child: const Center(
      child: Text("TAB 1 TEXT"),
    ),
  );
}