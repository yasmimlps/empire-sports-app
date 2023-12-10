import 'package:empire_sports/theme/app_text.dart';
import 'package:flutter/material.dart';

class LabelAndButton extends StatelessWidget {
  final String text;
  final String image;

  const LabelAndButton({Key? key, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: AppText.headlineSmall),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFFF5D70A)),
              ),
              child: Image(
                  height: 16,
                  width: 21,
                  image: AssetImage(image),
                  fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
