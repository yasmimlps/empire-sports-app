import 'package:empire_sports/components/card_bonus.dart';
import 'package:empire_sports/components/label_and_button.dart';
import 'package:empire_sports/theme/app_text.dart';
import 'package:flutter/material.dart';

class Bonus extends StatelessWidget {
  const Bonus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 25,
        bottom: 15,
      ),
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 35),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Principais bônus de aposta',
                  style: AppText.headlineLarge,
                )),
          ),
          SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CardBonus(
                  image: 'assets/images/stake.png',
                  text:
                      'Exclusivo 10% de Retorno e 200% de Bônus de Boas-Vindas até \$ 1000 em Crypto.',
                ),
                CardBonus(
                  image: 'assets/images/bet365.png',
                  text: "Créditos de Aposta até R\$ 200 na hora!",
                )
              ],
            ),
          ),
          const LabelAndButton(
              text: 'Veja mais bônus disponíveis',
              image: 'assets/images/arrow_right.png'),
        ],
      ),
    );
  }
}
