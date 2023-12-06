import 'package:firstui/projectPage.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

// void main() => runApp(
//   DevicePreview(
//     builder: (context) => MyApp(), // Wrap your app
//   ),
// );

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       home: const MyHomePage(),
      //home: ProjectPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25),
              height: 190.0,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(color: Colors.blue.shade600),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Roitters",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Team Folder",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black.withOpacity(.1)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 13.0),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black.withOpacity(.1)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            size: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Storage ',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: '9.1/10GB',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  Text(
                    "Upgrade",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade700),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: <Widget>[
                  buidFileSizeChar("SOURCES", Colors.blue, 100.0),
                  const SizedBox(
                    width: 10.0,
                  ),
                  buidFileSizeChar("DOCS", Colors.red, 80.0),
                  const SizedBox(
                    width: 2,
                  ),
                  buidFileSizeChar("IMAGES", Colors.green, 85.0),
                  const SizedBox(
                    width: 2,
                  ),
                  buidFileSizeChar("", Colors.grey, 60.0)
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Divider(
                height: 0.0,
              ),
            ),
            Expanded(
              //middle of the scaffolf
              child: ListView(
                padding: EdgeInsets.all(25),
                children: [
                  Text(
                    "Recently Added",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      imageBox("pic1", "dekstop"),
                      SizedBox(
                        width: 10.0,
                      ),
                      imageBox("pic2", "mobile"),
                      SizedBox(
                        width: 10.0,
                      ),
                      imageBox("pic4", "interaction"),
                    ],
                  ),
                  Divider(
                    height: 60.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Projects",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.black),
                      ),
                      Text(
                        "Create new",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.blueAccent.shade700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  projectRows("ChatBox"),
                  projectRows("TimeNote"),
                  projectRows("Calculater"),
                  projectRows("Something"),
                  projectRows("Others"),
                  projectRows("Others"),
                ],
              ),
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_){
                  return  ProjectPage();
                }
            ));
          },
          child:Icon(Icons.add,color: Colors.white,size: 35.0,),
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0), // Adjust the value as needed
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: 'Time',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: 'Folder',
            ),
          ],
        )
    );
  }

  Container projectRows(String folderName) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0), //get bottom space
      padding: EdgeInsets.symmetric(horizontal: 20), //to get left padding
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.folder,
                color: Colors.blue[200],
              ),
              SizedBox(
                width: 12.0,
              ),
              Text(
                folderName,
                style: TextStyle(fontSize: 16.0),
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }

  Column imageBox(String path, String title) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start, //all align start
      children: [
        Container(
          child: Image.asset('assets/' + path + ".png"),
          height: 120,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 13.0, color: Colors.black, fontWeight: FontWeight.w500),
        )
      ],
    );
  }

  Column buidFileSizeChar(String title, Color color, double width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, //all align start
      children: [
        Container(
          width: width,
          height: 4,
          color: color,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
