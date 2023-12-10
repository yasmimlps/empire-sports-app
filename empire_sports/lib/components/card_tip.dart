import 'package:empire_sports/components/button_icon.dart';
import 'package:empire_sports/theme/app_colors.dart';
import 'package:empire_sports/theme/app_text.dart';
import 'package:flutter/material.dart';

class CardTip extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const CardTip({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackOpacity,
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
      ),
      width: 270,
      child: Column(
        children: [
          _buildImage(),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      child: Image(
        height: 175,
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          height: 110,
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppText.headlineSmall,
              ),
              Text(
                description,
                style: AppText.bodySmall,
              ),
            ],
          ),
        ),
        _buildButtons(),
      ],
    );
  }

  Widget _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildButton('assets/images/soccer.png', 'Futebol'),
        _buildButton('assets/images/basketball.png', 'Basquete'),
      ],
    );
  }

  Widget _buildButton(String image, String text) {
    return ButtonIcon(
      onPressed: () {},
      image: image,
      text: text,
      heightIcon: 16,
      widthIcon: 16,
      widthButton: 70,
      heightButton: 29,
      textSize: 10,
    );
  }
}
