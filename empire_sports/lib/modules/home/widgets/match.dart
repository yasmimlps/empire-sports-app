import 'package:empire_sports/components/card_match.dart';
import 'package:empire_sports/components/label_and_button.dart';
import 'package:flutter/material.dart';

class Match extends StatelessWidget {
  const Match({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          _buildMatchCard(
            isCurrentPageMatch: false,
            image_1: 'assets/images/sp.png',
            image_2: 'assets/images/palmeiras.png',
            team_1: 'São Paulo',
            team_2: 'Palmeiras',
            bet: '3.2',
            betsafe: '2.6',
            betsson: '3.4',
            id: 0,
          ),
          _buildMatchCard(
            isCurrentPageMatch: false,
            image_1: 'assets/images/sp.png',
            image_2: 'assets/images/palmeiras.png',
            team_1: 'São Paulo',
            team_2: 'Palmeiras',
            bet: '3.2',
            betsafe: '2.6',
            betsson: '3.4',
            id: 1,
          ),
          LabelAndButton(
            text: 'Acompanhe todas as partidas',
            image: 'assets/images/arrow_right.png',
          ),
        ],
      ),
    );
  }

  Widget _buildMatchCard({
    required bool isCurrentPageMatch,
    required String image_1,
    required String image_2,
    required String team_1,
    required String team_2,
    required String bet,
    required String betsafe,
    required String betsson,
    required int id,
  }) {
    return CardMatch(
      isCurrentPageMatch: isCurrentPageMatch,
      image_1: image_1,
      image_2: image_2,
      team_1: team_1,
      team_2: team_2,
      bet: bet,
      betsafe: betsafe,
      betsson: betsson,
      id: id,
    );
  }
}
