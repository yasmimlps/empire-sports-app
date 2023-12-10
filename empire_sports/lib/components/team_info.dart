import 'package:empire_sports/theme/app_text.dart';
import 'package:flutter/material.dart';

class TeamInfo extends StatelessWidget {
  final String image;
  final String name;

  const TeamInfo({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
              height: 70,
              width: 70,
              image: AssetImage(image),
              fit: BoxFit.contain),
          Text(name, style: AppText.headlineSmall),
        ],
      ),
    );
  }
}
