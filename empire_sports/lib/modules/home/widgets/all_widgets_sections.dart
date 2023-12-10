import 'package:empire_sports/components/date_carousel.dart';
import 'package:empire_sports/modules/home/widgets/banners.dart';
import 'package:empire_sports/modules/home/widgets/bonus.dart';
import 'package:empire_sports/components/empire_widget.dart';
import 'package:empire_sports/modules/home/widgets/champions.dart';
import 'package:empire_sports/modules/home/widgets/last_bet.dart';
import 'package:empire_sports/modules/home/widgets/match.dart';
import 'package:empire_sports/modules/home/widgets/tip.dart';
import 'package:flutter/material.dart';

class AllWidgetsSections extends StatelessWidget {
  const AllWidgetsSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Banners(),
        const Champions(),
        DateCarousel(),
        const Match(),
        const Tip(),
        const Bonus(),
        const LastBet(),
        const Padding(
            padding: EdgeInsets.only(top: 25, bottom: 80),
            child: EmpireWidget())
      ],
    );
  }
}
