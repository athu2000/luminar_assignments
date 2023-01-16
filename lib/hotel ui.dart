import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
void main() {
  runApp(const MaterialApp(
    home: HotelUI(),
  ));
}

class HotelUI extends StatelessWidget {
  const HotelUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Container(
                    padding: const EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height * .45,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.kayak.com/rimg/himg/72/8b/3a/ice-110342-62467110_3XL-455229.jpg?width=720&height=576&crop=true'),
                          fit: BoxFit.cover),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              '8.5/1000 reviews',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )),
                const Positioned(
                  top: 60,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'DETAIL',
                      style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                  ),
                ),
                const Positioned(
                    bottom: 60,
                    left: 20,
                    child: Text(
                      'Grand Hyatt\nKochi',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    )),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 25,
                        itemPadding:
                        const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.purple,
                        ),
                        onRatingUpdate: (rating) {
                          if (kDebugMode) {
                            print(rating);
                          }
                        },
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          Text(
                            '8km to Lulu Mall',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '\$200',
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '/per night',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.purple),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                  shape: MaterialStateProperty.all(const StadiumBorder()),
                ),
                child: const Text('Book Now'),
                onPressed: () {
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: ListTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'DESCRIPTION',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Text(
                'Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. Thus, the lack of sufficient water or consumption of contaminated water can cause serious health problems for humans. Therefore, the amount and quality of water which we consume is essential for our physical health plus fitness. ',
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline),
                label: 'Favourites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'Settings')
          ]),
    );
  }
}