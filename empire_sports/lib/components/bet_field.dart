import 'package:empire_sports/theme/app_text.dart';
import 'package:flutter/material.dart';

class BetField extends StatelessWidget {
  final String title;
  final String image;
  final String value;
  final double widthImage;
  final double heightImage;

  const BetField({
    Key? key,
    required this.title,
    required this.image,
    required this.value,
    required this.widthImage,
    required this.heightImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 70,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppText.headlineSmall),
          Image(
            height: heightImage,
            width: widthImage,
            image: AssetImage(image),
            fit: BoxFit.contain,
          ),
          Text(value, style: AppText.headlineSmall),
        ],
      ),
    );
  }
}
