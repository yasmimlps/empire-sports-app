import 'package:carousel_slider/carousel_slider.dart';
import 'package:empire_sports/components/card_champions.dart';
import 'package:flutter/material.dart';

class Champions extends StatelessWidget {
  const Champions({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Campeonatos populares',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(height: 10),
          CarouselSlider(
            items: const [
              CardChampions(image: 'assets/images/champions_league.png'),
              CardChampions(image: 'assets/images/europa_league.png'),
              CardChampions(image: 'assets/images/serieA.png'),
              CardChampions(image: 'assets/images/liga.png'),
            ],
            options: CarouselOptions(
              height: 80,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              viewportFraction: 0.25,
              padEnds: false,
            ),
          ),
        ],
      ),
    );
  }
}
