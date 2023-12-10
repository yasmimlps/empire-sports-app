import 'package:empire_sports/theme/app_colors.dart';
import 'package:empire_sports/theme/app_text.dart';
import 'package:flutter/material.dart';

class CardBet extends StatelessWidget {
  final String image;
  final String avatar;
  final String name;
  final String description;
  final String teams;
  final String time;
  final String value;

  const CardBet({
    Key? key,
    required this.image,
    required this.avatar,
    required this.name,
    required this.description,
    required this.teams,
    required this.time,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: const [
          BoxShadow(
            color: AppColors.blackOpacity,
            spreadRadius: 0.1,
            blurRadius: 20,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildAvatar(),
          _buildBetDetails(),
          _buildBetImage(),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return ClipOval(
      child: Image(
        height: 50,
        width: 50,
        image: AssetImage(avatar),
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildBetDetails() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: AppText.bodyMedium,
        ),
        Text(
          description,
          style: AppText.headlineMedium,
        ),
        Row(
          children: [
            Text(
              teams,
              style: AppText.labelSmall,
            ),
            const SizedBox(width: 4),
            _buildCircleIcon(),
            Text(
              time,
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCircleIcon() {
    return const Icon(
      Icons.circle,
      size: 4,
    );
  }

  Widget _buildBetImage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          height: 50,
          width: 50,
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
        Text(value),
      ],
    );
  }
}
