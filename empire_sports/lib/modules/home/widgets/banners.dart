import 'package:carousel_slider/carousel_slider.dart';
import 'package:empire_sports/components/card_banner.dart';
import 'package:empire_sports/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Banners extends StatelessWidget {
  const Banners({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 50),
      child: CarouselSlider(
          items: const [
            CardBanner(
              image: 'assets/images/image12.png',
              title: 'Campeonatos populares',
              color: AppColors.primaryColor,
              subtitle: '',
              flag: false,
            ),
            CardBanner(
              image: 'assets/images/nba.png',
              title: 'NBA',
              color: AppColors.gray1,
              subtitle: 'National Basketball Association',
              flag: false,
            ),
            CardBanner(
              image: 'assets/images/redbull.png',
              title: 'League of its Own',
              color: AppColors.brownCardColor,
              subtitle: '',
              flag: true,
            ),
          ],
          options: CarouselOptions(
            height: 180,
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            viewportFraction: 0.7,
          )),
    );
  }
}
