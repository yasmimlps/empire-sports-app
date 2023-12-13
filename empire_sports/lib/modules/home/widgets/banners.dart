import 'package:carousel_slider/carousel_slider.dart';
import 'package:empire_sports/components/card_banner.dart';
import 'package:empire_sports/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Banners extends StatelessWidget {
  const Banners({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: CarouselSlider(
        items: _buildBannerCards(),
        options: CarouselOptions(
          height: 180,
          enlargeCenterPage: false,
          enableInfiniteScroll: false,
          viewportFraction: 0.78,
          padEnds: false,
        ),
      ),
    );
  }

  List<Widget> _buildBannerCards() {
    return [
      _buildCard(
        image: 'assets/images/image12.png',
        title: 'Campeonatos populares',
        color: AppColors.primaryColor,
      ),
      _buildCard(
        image: 'assets/images/nba.png',
        title: 'NBA',
        color: AppColors.gray1,
        subtitle: 'National Basketball Association',
      ),
      _buildCard(
        image: 'assets/images/redbull.png',
        title: 'League of its Own',
        color: AppColors.brownCardColor,
        flag: true,
      ),
    ];
  }

  Widget _buildCard({
    required String image,
    required String title,
    required Color color,
    String subtitle = '',
    bool flag = false,
  }) {
    return CardBanner(
      image: image,
      title: title,
      color: color,
      subtitle: subtitle,
      flag: flag,
    );
  }
}
