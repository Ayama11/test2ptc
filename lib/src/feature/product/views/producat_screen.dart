import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:test2ptc/core/utils/color_manger.dart';
import 'package:test2ptc/core/utils/styles.dart';
import 'package:test2ptc/src/feature/product/views/widgets/producat_cart.dart';
import 'package:iconsax/iconsax.dart';
import '../models/producat_model.dart';
import 'widgets/category_button.dart';

class ProductScreen extends HookWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedCategory = useState('Popular');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_circle_left, color: Colors.black),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        title: Text(
          'Big & Small Fishes',
          style: Styles.textStyle14
              .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            icon: const Icon(Iconsax.search_normal, color: ColorApp.blackColor),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: const Icon(Iconsax.shopping_bag,
                    color: ColorApp.blackColor),
                onPressed: () {},
              ),
              const Positioned(
                right: 7,
                top: 7,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: ColorApp.yallowDarkColor,
                  child: Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ColumnProducat(selectedCategory: selectedCategory),
    );
  }
}

class ColumnProducat extends StatelessWidget {
  const ColumnProducat({
    super.key,
    required this.selectedCategory,
  });

  final ValueNotifier<String> selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CategoryButton(
                text: 'Popular',
                isSelected: selectedCategory.value == 'Popular',
                onTap: () => selectedCategory.value = 'Popular',
              ),
              CategoryButton(
                text: 'Low Price',
                isSelected: selectedCategory.value == 'Low Price',
                onTap: () => selectedCategory.value = 'Low Price',
              ),
              CategoryButton(
                text: 'Small Fishes',
                isSelected: selectedCategory.value == 'Small Fishes',
                onTap: () => selectedCategory.value = 'Small Fishes',
              ),
              CategoryButton(
                text: 'Big Fishes',
                isSelected: selectedCategory.value == 'Big Fishes',
                onTap: () => selectedCategory.value = 'Big Fishes',
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(product: products[index]);
            },
          ),
        ),
      ],
    );
  }
}
