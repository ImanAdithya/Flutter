import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 25.0),
            alignment: Alignment.bottomCenter,
            height: 190.0,
            decoration: BoxDecoration(color: Colors.grey.shade200),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                 children: [
                   Text(
                       "ChatBox",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                   ),

                   Text(
                     "Project",
                     style: TextStyle(
                         fontSize: 16.0,
                         color: Colors.black,
                         fontWeight: FontWeight.w400
                     ),
                   ),

                 ],
                ),

                Row(
                  children: [
                    Container(
                      child: Icon(Icons.search,size: 28,color: Colors.blue,),
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.05),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),

                    SizedBox(width: 10,),

                    Container(
                      child: Icon(Icons.share_outlined,size: 28,color: Colors.blue),
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.05),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 25,top: 25 ),
            height: 130.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:  [
                buildAvatar("Iman"),
                buildAvatar("Gek"),
                buildAvatar("Neha"),
                buildAvatar("Moul"),
                buildAvatar("Fasik"),
                buildAvatar("Rash"),
                buildAvatar("kio"),
                buildAvatar("Calsi"),
              ],
            ),
          ),

          Divider(),
          
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(25),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Files",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0,
                          color: Colors.black),
                    ),
                    Text(
                      "Create new",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.blueAccent.shade700,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.0,),
                
                projectRows("Assets"),
                projectRows("BrandBook"),
                projectRows("Design"),
                projectRows("MoodBoard"),
                projectRows("WireFrames"),
                projectRows("Libraries"),
                projectRows("Documents"),
                projectRows("Images"),

              ],
            ),
          ),
        ],
      ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){},
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
              icon: Icon(Icons.access_time,color: Colors.black54,),
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

  Widget buildAvatar(String name){
    return Padding(
      padding: const EdgeInsets.only(right: 7),
      child: Column(
        children: [
          CircleAvatar(backgroundImage:Image.asset("assets/iman.jpeg").image ,radius: 30,),
          SizedBox(width: 5.0,),
          Text(name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15.0),),
        ],
      ),
    );
  }
}
