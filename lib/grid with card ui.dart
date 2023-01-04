import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridcard(),
  ));
}

class Gridcard extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid with Card UI'),),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10,childAspectRatio: 3),
        children: [
          Card(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
              color: Colors.blue,
              elevation: 11,
              shadowColor: Colors.black,
              child: const ListTile(
                leading: Icon(size: 45.0 ,Icons.home),
                  title: Text("Heart\nShaker", style: TextStyle(fontSize: 25),),
                  ),
            ),
          Card(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Colors.orange,
            elevation: 11,
            shadowColor: Colors.black,
            child: const ListTile(
              leading: Icon(size: 45.0 ,Icons.notification_important),
              title: Text("Heart\nShaker", style: TextStyle(fontSize: 25),),
            ),
          ),
          Card(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Colors.green,
            elevation: 11,
            shadowColor: Colors.black,
            child: const ListTile(
              leading: Icon(size: 45.0 ,Icons.linked_camera),
              title: Text("Heart\nShaker", style: TextStyle(fontSize: 25),),
            ),
          ),
          Card(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Colors.pink,
            elevation: 11,
            shadowColor: Colors.black,
            child: const ListTile(
              leading: Icon(size: 45.0 ,Icons.stars),
              title: Text("Heart\nShaker", style: TextStyle(fontSize: 25),),
            ),
          ),
          Card(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Colors.redAccent,
            elevation: 11,
            shadowColor: Colors.black,
            child: const ListTile(
              leading: Icon(size: 45.0 ,Icons.wifi),
              title: Text("Heart\nShaker", style: TextStyle(fontSize: 25),),
            ),
          ),
          Card(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Colors.blueAccent,
            elevation: 11,
            shadowColor: Colors.black,
            child: const ListTile(
              leading: Icon(size: 45.0 ,Icons.book),
              title: Text("Heart\nShaker", style: TextStyle(fontSize: 25),),
            ),
          ),
          Card(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Colors.purpleAccent,
            elevation: 11,
            shadowColor: Colors.black,
            child: const ListTile(
              leading: Icon(size: 45.0 ,Icons.phone),
              title: Text("Heart\nShaker", style: TextStyle(fontSize: 25),),
            ),
          ),
          Card(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Colors.lightGreen,
            elevation: 11,
            shadowColor: Colors.black,
            child: const ListTile(
              leading: Icon(size: 45.0 ,Icons.mail_rounded),
              title: Text("Heart\nShaker", style: TextStyle(fontSize: 25),),
            ),
          ),
          Card(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Colors.orangeAccent,
            elevation: 11,
            shadowColor: Colors.black,
            child: const ListTile(
              leading: Icon(size: 45.0 ,Icons.offline_share_sharp),
              title: Text("Heart\nShaker", style: TextStyle(fontSize: 25),),
            ),
          ),
          Card(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Colors.deepOrange,
            elevation: 11,
            shadowColor: Colors.black,
            child: const ListTile(
              leading: Icon(size: 45.0 ,Icons.add_link_outlined),
              title: Text("Heart\nShaker", style: TextStyle(fontSize: 25),),
            ),
          ),
          Card(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Colors.pinkAccent,
            elevation: 11,
            shadowColor: Colors.black,
            child: const ListTile(
              leading: Icon(size: 45.0 ,Icons.mic_off),
              title: Text("Heart\nShaker", style: TextStyle(fontSize: 25),),
            ),
          ),
          Card(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
            color: Colors.greenAccent,
            elevation: 11,
            shadowColor: Colors.black,
            child: const ListTile(
              leading: Icon(size: 45.0 ,Icons.add_card),
              title: Text("Heart\nShaker", style: TextStyle(fontSize: 25),),
            ),
          ),
        ],
        ),
      ),
    );
  }
}
