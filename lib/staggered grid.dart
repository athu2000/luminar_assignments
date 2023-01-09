import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(
    home: Staggered(),
  ));
}

class Staggered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: AppBar(
              centerTitle: true,
              title: const Text(
                'Staggered Grid',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          staggeredTiles: const [
            StaggeredTile.count(2, 2.4),
            StaggeredTile.count(2, 3.8),
            StaggeredTile.count(2, 2.4),
            StaggeredTile.count(2, 2.2),
            StaggeredTile.count(2, 2.3),
          ],
          children: [
            Customchild(imageurl: "https://www.perthobservatory.com.au/wp-content/uploads/geminids-over-mountains-banner-275x220.jpg", titles: "Mysteries of the Universe", dates: "20 Jun 2013", artist: "Carl Sagan"),
            Customchild(imageurl: "https://images.unsplash.com/photo-1554058403-b10bf226b56d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&w=1000&q=80", titles: "An Empire State of the...", dates: "19 Jun 2013", artist: "Ernest Hemingway"),
            Customchild(imageurl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJz0b5IHoGvNRMkANOq5TE1cIA36EYyIAOMg&usqp=CAU", titles: "10 Tips for Hipster the...", dates: "10 May 2013", artist: "Vincent Van Gogh"),
            Customchild(imageurl: "https://cdn.britannica.com/35/233235-050-8DED07E3/Pug-dog.jpg", titles: "A Cute Pug Out in the...", dates: "15 Jun 2020", artist: "Somebody"),
            Customchild(imageurl: "https://img.freepik.com/free-photo/beautiful-scenery-clear-white-snowy-mountains-hills_181624-3126.jpg?w=2000", titles: "My Story of Climbing the...", dates: "1 Sep 2013", artist: "Nobody"),
          ],
        ),
      ),
    );
  }
}

class Customchild extends StatelessWidget {
  String imageurl;
  String titles;
  String dates;
  String artist;

  //VoidCallback onpress;

  Customchild({required this.imageurl, required this.titles, required this.dates, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 11,
      shadowColor: Colors.black,
      child: Column(
        children: [
          Image.network(imageurl),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(titles,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Container( alignment: Alignment.bottomLeft, child: Text(dates,style: const TextStyle(fontSize: 17,color: Colors.grey,),)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Container(alignment: Alignment.bottomLeft, child: Text(artist,style: const TextStyle(fontSize: 17,color: Colors.grey),)),
          ),
        ],
      ),
    );
  }
}
