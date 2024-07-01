import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manger.dart';

class NavigationItem extends StatelessWidget {
  final IconData icon;
  final String? label;
  final bool isActive;

  const NavigationItem({
    super.key,
    required this.icon,
    this.label,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 24,
          color: isActive ? ColorApp.yallowLightColor : ColorApp.grayLightColor,
        ),
        if (label != null) ...[
          const SizedBox(height: 4),
          Text(
            label!,
            style: TextStyle(
              color: isActive
                  ? ColorApp.yallowLightColor
                  : ColorApp.grayLightColor,
              fontSize: 12,
            ),
          ),
        ],
      ],
    );
  }
}
