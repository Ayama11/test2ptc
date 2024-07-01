import 'package:flutter/material.dart';
import 'package:test2ptc/core/utils/assets_manger.dart';

class CartCategory extends StatelessWidget {
  const CartCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: const SizedBox(
            //  width: 130,
            height: 160,
            child: Row(
              children: [
                ImagesCart(),
                SizedBox(width: 30),
                Expanded(
                    child: Column(
                  children: [
                    Text("dfndjns"),
                    SizedBox(
                      height: 40,
                    ),
                    Text("dfndjns")
                  ],
                ))
              ],
            )));
  }
}

class ImagesCart extends StatelessWidget {
  const ImagesCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.asset(
            AssetsManger.image,
          ),
        ));
  }
}
