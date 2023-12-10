import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final void Function() onPressed;
  final Color colorBackground;
  final Color colorText;
  final BorderSide? borderSide;
  final String image;
  final String text;
  final double heightIcon;
  final double widthIcon;
  final double heightButton;
  final double widthButton;
  final double textSize;

  const ButtonIcon({
    Key? key,
    required this.onPressed,
    required this.colorBackground,
    required this.colorText,
    this.borderSide,
    required this.image,
    required this.text,
    required this.heightIcon,
    required this.widthIcon,
    required this.heightButton,
    required this.widthButton,
    required this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: SizedBox(
        width: widthButton,
        height: heightButton,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              height: heightIcon,
              width: widthIcon,
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            Text(
              text,
              style: TextStyle(
                color: colorText,
                fontSize: textSize,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
