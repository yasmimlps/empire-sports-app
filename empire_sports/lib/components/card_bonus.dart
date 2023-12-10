import 'package:empire_sports/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CardBonus extends StatelessWidget {
  final String image;
  final String text;

  const CardBonus({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      width: 350,
      decoration: BoxDecoration(
        color: AppColors.brownCardColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildImage(),
          _buildText(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Image(
      height: 40,
      width: 40,
      image: AssetImage(image),
      fit: BoxFit.cover,
    );
  }

  Widget _buildText() {
    return SizedBox(
      width: 225,
      child: Text(
        text,
      ),
    );
  }
}
