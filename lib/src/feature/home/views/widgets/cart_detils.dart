import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test2ptc/core/utils/assets_manger.dart';
import 'package:test2ptc/core/utils/color_manger.dart';
import 'package:test2ptc/core/utils/routing.dart';
import 'package:test2ptc/core/utils/styles.dart';
import 'package:test2ptc/core/widgets/circular_icons.dart';
import 'package:iconsax/iconsax.dart';

class CardDetelis extends StatelessWidget {
  const CardDetelis({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetsManger.image,
            height: 60,
            width: 60,
          ),
          const SizedBox(width: 46),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Get', style: Styles.textStyle20),
              Text('50%  OFF',
                  style: Styles.textStyle20
                      .copyWith(fontWeight: FontWeight.w800, fontSize: 26)),
              const SizedBox(height: 4),
              const Text(
                'On first 03 order',
                style: Styles.textStyle13,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.scrollDirection,
  });
  final Axis scrollDirection;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: scrollDirection,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: CardItem(),
          );
        },
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kProductScreen);
      },
      child: Card(
        color: ColorApp.cardColor,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  AssetsManger.image,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                color: Color(0xffE0E2EE),
              ),
              const Text(
                textAlign: TextAlign.start,
                "Fresh Lemon",
                style: Styles.textStyle14,
              ),
              const Text(
                "Organic ",
                textAlign: TextAlign.left,
                style: Styles.textStyle12,
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: ColorApp.whiteColor),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Text(
                        "Unit",
                        style: Styles.textStyle12,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "\$12",
                      style: Styles.textStyle14,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    CircularIcons(
                        height: 30,
                        width: 30,
                        size: 18,
                        color: ColorApp.whiteColor,
                        backgrounColor: ColorApp.primaryColor,
                        icon: Iconsax.add)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
