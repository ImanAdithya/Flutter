import 'package:flutter/material.dart';


class Practise_4 extends StatefulWidget {
  @override
  State<Practise_4> createState() => _Practise_4();
}

class _Practise_4 extends State<Practise_4> {

  var items=List<String>.generate(100, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practise 4"),
      ),

      body: ListView.builder(
          itemCount:items.length,
          itemBuilder: (context,index){//more list view mechanism //memoery concuume
            return ListTile(
              title: Text(items[index]),
            );
          }
      ),
    );
  }
}
