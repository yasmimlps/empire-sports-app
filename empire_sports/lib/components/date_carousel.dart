import 'package:empire_sports/theme/app_colors.dart';
import 'package:empire_sports/theme/app_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DateCarousel extends StatelessWidget {
  final List<String> dates = [
    'Live',
    'Hoje',
    '01/01',
    '02/01',
    '03/01',
    '04/01',
    '05/01'
  ];

  DateCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: dates.length,
      options: CarouselOptions(
        height: 50,
        viewportFraction: 0.22,
        enableInfiniteScroll: false,
        reverse: false,
        padEnds: false,
        scrollDirection: Axis.horizontal,
      ),
      itemBuilder: (context, index, realIndex) {
        String date = dates[index];
        bool isFirstDate = index == 0;

        return Container(
          width: 80,
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 1, color: const Color(0xFFEFEFEF)),
            color: isFirstDate ? AppColors.black : null,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isFirstDate)
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.red,
                    ),
                  ),
                ),
              Expanded(
                child: Center(
                  child: Text(
                    date,
                    style: AppText.labelMedium.copyWith(
                      color: isFirstDate ? Colors.white : null,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
