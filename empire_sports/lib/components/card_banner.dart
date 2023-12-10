import 'package:empire_sports/theme/app_text.dart';
import 'package:flutter/material.dart';

class CardBanner extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final Color color;
  final bool flag;

  const CardBanner({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.flag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Stack(
        children: [
          _buildBackground(),
          _buildImage(),
          _buildText(),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 166,
        width: 280,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(36.0),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Positioned(
      right: -5,
      bottom: flag ? 35 : 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(36.0),
        ),
        child: Image(
          image: AssetImage(image),
          height: flag ? 150 : 181,
          width: flag ? 130 : 191,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildText() {
    return Positioned(
      top: 55,
      left: 30,
      child: SizedBox(
        height: 90,
        width: flag ? 100 : 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppText.headlineLarge,
            ),
            Text(
              subtitle,
              style: AppText.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
