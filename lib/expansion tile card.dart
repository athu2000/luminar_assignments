import 'package:flutter/material.dart';
import 'experience.dart';

void main() {
  runApp(MaterialApp(
    home: ExpansionTileCardSample(),
  ));
}

double height = 100;

class ExpansionTileCardSample extends StatefulWidget {
  static String id = 'Expansion_tile_card_sample';
  @override
  State<ExpansionTileCardSample> createState() =>
      _ExpansionTileCardSampleState();
}

class _ExpansionTileCardSampleState extends State<ExpansionTileCardSample> {
  List cardContents = [
    {
      'title': 'Flutter Internship',
      'bg': 'https://assets5.lottiefiles.com/packages/lf20_uZeVpjFav8.json',
      'subtitle': '6 months +',
      'institute': 'Luminar Technolab, Kochi',
      'details':
      'Gained indepth knowledge about Mobile Application Development and worked on various Projects',
    },
    {
      'title': 'Android Training',
      'bg': 'https://assets2.lottiefiles.com/packages/lf20_boJRmE.json',
      'subtitle': '4 months',
      'institute': 'Luminar Technolab, Kochi',
      'details':
      'Gained indepth knowledge about Android Development and worked on various Projects',
    },
    {
      'title': 'Java Training',
      'bg': 'https://assets2.lottiefiles.com/private_files/lf30_qam8tww4.json',
      'subtitle': '5 months',
      'institute': 'Luminar Technolab, Kochi',
      'details':
      'Gained indepth knowledge about Java Programming and worked on various Projects',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: const Text('Expansion Tile Card with Lottie'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'Experience',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey.shade800),
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => ExperienceTileCard(
                index: index,
                cardContents: cardContents,
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: cardContents.length)
        ],
      ),
    );
  }
}