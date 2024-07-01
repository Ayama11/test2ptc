import 'package:flutter/material.dart';
import 'package:test2ptc/core/utils/color_manger.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
        decoration: BoxDecoration(
          color: isSelected ? ColorApp.yallowDarkColor : ColorApp.whiteColor,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.grey),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? ColorApp.whiteColor : ColorApp.blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
