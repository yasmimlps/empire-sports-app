import 'package:carousel_slider/carousel_slider.dart';
import 'package:empire_sports/components/card_bet.dart';
import 'package:empire_sports/theme/app_text.dart';
import 'package:flutter/material.dart';

class LastBet extends StatelessWidget {
  const LastBet({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildSectionTitle('Últimas apostas ganhas'),
          CarouselSlider(
            items: _buildBetCards(),
            options: CarouselOptions(
              height: 120,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              viewportFraction: 0.76,
              padEnds: false,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return SizedBox(
      height: 30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Image(
              height: 20,
              width: 20,
              image: AssetImage('assets/images/fire.png'),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            title,
            style: AppText.headlineLarge,
          ),
        ],
      ),
    );
  }

  List<Widget> _buildBetCards() {
    return const [
      CardBet(
        image: 'assets/images/bet365.png',
        name: 'João Felipe Miranda',
        description: 'Mais de 2.6 Goals',
        teams: 'BRA X ARG',
        time: 'Há 10 minutos',
        value: '1.44',
        avatar: 'assets/images/avatar2.png',
      ),
      CardBet(
        image: 'assets/images/bet365.png',
        name: 'João Felipe Miranda',
        description: 'Mais de 2.6 Goals',
        teams: 'BRA X ARG',
        time: 'Há 10 minutos',
        value: '1.44',
        avatar: 'assets/images/avatar1.png',
      ),
      CardBet(
        image: 'assets/images/bet365.png',
        name: 'João Felipe Miranda',
        description: 'Mais de 2.6 Goals',
        teams: 'BRA X ARG',
        time: 'Há 10 minutos',
        value: '1.44',
        avatar: 'assets/images/avatar1.png',
      ),
    ];
  }
}
