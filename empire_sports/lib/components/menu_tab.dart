import 'package:flutter/material.dart';

class MenuTab extends StatelessWidget {
  final String text;
  final String image;
  const MenuTab({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          height: 17.5,
          width: 17.5,
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(text),
      ],
    );
  }
}
