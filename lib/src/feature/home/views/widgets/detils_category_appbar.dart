import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manger.dart';
import '../../../../../core/utils/styles.dart';

class DetilsCategoryAppBar extends StatelessWidget {
  final VoidCallback onToggleView;

  const DetilsCategoryAppBar({
    super.key,
    required this.onToggleView,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shop",
            style: Styles.textStyle50.copyWith(color: ColorApp.whiteColor),
          ),
          Row(
            children: [
              Text(
                "By Category",
                style: Styles.textStyle50.copyWith(
                    color: ColorApp.whiteColor, fontWeight: FontWeight.w800),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.swap_vert,
                  size: 30,
                  color: ColorApp.yallowLightColor,
                ),
                onPressed: onToggleView,
              ),
            ],
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
