import 'package:flutter/material.dart';
import 'package:test2ptc/core/utils/color_manger.dart';
import 'package:iconsax/iconsax.dart';
import 'package:test2ptc/core/utils/styles.dart';

class SearchText extends StatelessWidget {
  const SearchText({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search Products or store',
        hintStyle: Styles.textStyle14w500,
        fillColor: ColorApp.blueDarkColor,
        filled: true,
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 30, right: 20),
          child: Icon(
            Iconsax.search_normal,
            color: ColorApp.whiteColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
