import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridstack extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Countries"),),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
        children: const [
          Image(image: AssetImage('assets/icons/Baby-Lion-Christmas-icon.png')),
          Image(image: AssetImage('assets/icons/Baby-Lion-Christmas-icon.png')),
          Image(image: AssetImage('assets/icons/Baby-Lion-Christmas-icon.png')),
          Image(image: AssetImage('assets/icons/Baby-Lion-Christmas-icon.png')),
          Image(image: AssetImage('assets/icons/Baby-Lion-Christmas-icon.png')),
          Image(image: AssetImage('assets/icons/Baby-Lion-Christmas-icon.png')),
          Image(image: AssetImage('assets/icons/Baby-Lion-Christmas-icon.png')),
          Image(image: AssetImage('assets/icons/Baby-Lion-Christmas-icon.png')),
          Image(image: AssetImage('assets/icons/Baby-Lion-Christmas-icon.png')),
          Image(image: AssetImage('assets/icons/Baby-Lion-Christmas-icon.png')),
          Image(image: AssetImage('assets/icons/Baby-Lion-Christmas-icon.png')),
          Image(image: AssetImage('assets/icons/Baby-Lion-Christmas-icon.png')),
        ],
      ),
    );
  }
}
