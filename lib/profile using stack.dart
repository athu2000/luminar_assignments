import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile(),
  ));
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          centerTitle: true,
          title: const Text(
            'Profile',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 40,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded, size: 40),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.network('https://images.immediate.co.uk/production/volatile/sites/4/2021/08/mountains-7ddde89.jpg')),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: MaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        color: Colors.red,
                        padding: const EdgeInsets.all(20),
                        shape: const CircleBorder(),
                        child: const Icon(
                          Icons.message,
                          size: 27.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 235),
                      child: Column(children: const [
                        CircleAvatar(
                          radius: 55.0,
                          backgroundImage:
                          NetworkImage('https://img.a.transfermarkt.technology/portrait/big/3139-1459504284.jpg?lm=1'),
                          backgroundColor: Colors.transparent,
                        ),
                        Text("David Beckham", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),
                        Text("Model/SuperStar",style: TextStyle(fontSize: 20,color: Colors.blue),)
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: MaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        color: Colors.blue,
                        padding: const EdgeInsets.all(20),
                        shape: const CircleBorder(),
                        child: const Icon(
                          Icons.add,
                          size: 27.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ],
          )),
    );
  }
}
