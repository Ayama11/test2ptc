import 'package:flutter/material.dart';
import 'package:test2ptc/core/utils/color_manger.dart';
import 'package:test2ptc/src/feature/home/views/widgets/cart_detils.dart';

class HorizontalCardList extends StatelessWidget {
  final List<Color> cardColors = [
    ColorApp.yallowDarkColor,
    ColorApp.grayLightColor,
   ColorApp.yallowDarkColor,
    ColorApp.grayLightColor,
    ColorApp.yallowDarkColor,
    ColorApp.grayLightColor,
  ];

  HorizontalCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: cardColors[index],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const CardDetelis(),
            ),
          );
        },
      ),
    );
  }
}
