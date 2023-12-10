import 'package:carousel_slider/carousel_slider.dart';
import 'package:empire_sports/components/card_tip.dart';
import 'package:empire_sports/theme/app_text.dart';
import 'package:flutter/material.dart';

class Tip extends StatelessWidget {
  const Tip({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Dicas',
                style: AppText.headlineLarge,
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Ver todas',
                  style: AppText.headlineSmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          CarouselSlider(
            items: _buildTipCards(),
            options: CarouselOptions(
              height: 340,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              viewportFraction: 0.75,
              padEnds: false,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildTipCards() {
    const List<Map<String, String>> tips = [
      {
        'image': 'assets/images/tips_1.png',
        'description': 'Explore as melhores práticas ...',
        'title': 'Apostas ao Vivo: Estratégias e Dicas para o Sucesso',
      },
      {
        'image': 'assets/images/tips_2.png',
        'description': 'Explore as melhores práticas ...',
        'title': 'Apostas ao Vivo: Estratégias e Dicas para o Sucesso',
      },
      {
        'image': 'assets/images/tips_3.png',
        'description': 'Explore as melhores práticas ...',
        'title': 'Apostas ao Vivo: Estratégias e Dicas para o Sucesso',
      },
      {
        'image': 'assets/images/tips_4.png',
        'description': 'Explore as melhores práticas ...',
        'title': 'Apostas ao Vivo: Estratégias e Dicas para o Sucesso',
      },
    ];

    return tips.map((tip) {
      return CardTip(
        image: tip['image']!,
        description: tip['description']!,
        title: tip['title']!,
      );
    }).toList();
  }
}
