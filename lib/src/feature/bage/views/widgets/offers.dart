import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manger.dart';

class Offers extends StatelessWidget {
  const Offers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '25%',
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          'OFF!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Use code #HalalFood at Checkout',
          style: TextStyle(
            fontSize: 16,
            color: ColorApp.blackColor,
          ),
        ),
      ],
    );
  }
}
