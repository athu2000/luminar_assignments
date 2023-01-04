import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridstack(),
  ));
}

class Gridstack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid with Stack"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          children: [
            Stack(
              children: [
                Container(
                  height: 310,
                  width: 310,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/usa.jpg"),
                          fit: BoxFit.fill),borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "USA",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 310,
                  width: 310,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/england.jpeg"),
                          fit: BoxFit.fill),borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "ENGLAND",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 310,
                  width: 310,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/france.jpg"),
                          fit: BoxFit.fill),borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "FRANCE",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 310,
                  width: 310,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/russia.jpg"),
                          fit: BoxFit.fill),borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "RUSSIA",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 310,
                  width: 310,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/canada.jpg"),
                          fit: BoxFit.fill),borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "CANADA",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
