// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:test2ptc/core/utils/color_manger.dart';
import 'package:test2ptc/core/utils/routing.dart';
import 'package:test2ptc/core/utils/styles.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Hi, Aya",
            style: Styles.textStyle22.copyWith(color: ColorApp.whiteColor)),
        // IconButton(onPressed: () {}, icon: const Icon(Iconsax.search_normal)),
        const IconsCount()
      ],
    );
  }
}

class IconsCount extends StatelessWidget {
  const IconsCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: const Icon(Iconsax.shopping_bag, color: Colors.white),
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kOfferScreen);
          },
        ),
        Positioned(
            right: 1,
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                  color: ColorApp.yallowDarkColor,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                  child: Text(
                "3",
                style: Styles.textStyle22
                    .copyWith(fontSize: 14, color: ColorApp.whiteColor),
              )),
            )),
      ],
    );
  }
}
