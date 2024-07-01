import 'package:flutter/material.dart';
import 'package:test2ptc/src/feature/home/views/widgets/delivery_info.dart';

import '../../../../../core/widgets/search_text.dart';

class DetilsHomeAppBar extends StatelessWidget {
  const DetilsHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: SearchText(),
        ),
        SizedBox(height: 32),
        DeliveryInfo(),
        SizedBox(height: 18),
      ],
    );
  }
}
