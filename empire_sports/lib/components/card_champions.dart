import 'package:empire_sports/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CardChampions extends StatelessWidget {
  final String image;

  const CardChampions({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: AppColors.brownCardColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Image(
            height: 50,
            width: 50,
            image: AssetImage(image),
            fit: BoxFit.contain),
      ),
    );
  }
}
