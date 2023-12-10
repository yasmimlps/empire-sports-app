import 'package:empire_sports/components/bet_field.dart';
import 'package:empire_sports/components/team_info.dart';
import 'package:empire_sports/theme/app_colors.dart';
import 'package:empire_sports/theme/app_text.dart';
import 'package:flutter/material.dart';

class CardMatch extends StatelessWidget {
  final bool isCurrentPageMatch;
  final String image_1;
  final String image_2;
  final String team_1;
  final String team_2;
  final String bet;
  final String betsafe;
  final String betsson;
  final int id;

  CardMatch({
    Key? key,
    required this.isCurrentPageMatch,
    required this.image_1,
    required this.image_2,
    required this.team_1,
    required this.team_2,
    required this.bet,
    required this.betsafe,
    required this.betsson,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: const [
          BoxShadow(
            color: AppColors.blackOpacity,
            spreadRadius: 0.1,
            blurRadius: 15,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTeamsRow(),
          _buildMatchDetails(),
          _buildBetFieldsRow(),
          _buildDivider(),
          !isCurrentPageMatch
              ? InkWell(
                  onTap: () {},
                  child: const Text(
                    'Ver mais',
                    style: AppText.labelMedium,
                  ))
              : const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget _buildTeamsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TeamInfo(image: image_1, name: team_1),
        _buildLiveInfo(),
        TeamInfo(image: image_2, name: team_2),
      ],
    );
  }

  Widget _buildLiveInfo() {
    return Column(
      children: [
        SizedBox(
          height: 40,
          width: 60,
          child: Stack(
            children: [
              const Text('Ao vivo'),
              Positioned(
                bottom: 35,
                right: 0,
                child: Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.red,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: const Center(child: Text("60'")),
        ),
      ],
    );
  }

  Widget _buildMatchDetails() {
    return SizedBox(
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text(
            '2 : 2',
            style: TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }

  Widget _buildBetFieldsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BetField(
          title: 'Casa',
          image: 'assets/images/bet.png',
          value: bet,
          widthImage: 60,
          heightImage: 21,
        ),
        _buildVerticalDivider(),
        BetField(
          title: 'x',
          image: 'assets/images/betsafe.png',
          value: betsafe,
          widthImage: 67,
          heightImage: 16,
        ),
        _buildVerticalDivider(),
        BetField(
          title: 'Fora',
          image: 'assets/images/betsson.png',
          value: betsson,
          widthImage: 52,
          heightImage: 11,
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      color: AppColors.gray1,
      height: 0.3,
      width: 300,
    );
  }

  Widget _buildVerticalDivider() {
    return Container(
      color: AppColors.gray1,
      height: 30,
      width: 0.3,
    );
  }
}
