import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'expansion tile card.dart';

class ExperienceTileCard extends StatefulWidget {
  final index;
  final List cardContents;

  const ExperienceTileCard({required this.index, required this.cardContents});
  @override
  State<ExperienceTileCard> createState() => _ExperienceTileCardState();
}

class _ExperienceTileCardState extends State<ExperienceTileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Lottie.network(
              widget.cardContents[widget.index]['bg'],
              fit: BoxFit.cover,
              height: height,
              width: double.infinity,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: ExpansionTileCard(
              onExpansionChanged: (value) {
                setState(() {
                  value ? height = 200 : height = 100;
                });
              },
              baseColor: Colors.transparent,
              expandedColor: Colors.transparent,
              shadowColor: Colors.transparent,
              title: Text(
                widget.cardContents[widget.index]['title'],
                style: const TextStyle(color: Colors.black, fontSize: 30),
              ),
              subtitle: Text(
                widget.cardContents[widget.index]['subtitle'],
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      widget.cardContents[widget.index]['institute'],
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    widget.cardContents[widget.index]['details'],
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}