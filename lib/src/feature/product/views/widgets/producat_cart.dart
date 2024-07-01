import 'package:flutter/material.dart';
import 'package:test2ptc/core/utils/color_manger.dart';

import '../../models/producat_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorApp.cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(child: Image.asset(product.imageUrl)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              product.price,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              product.name,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.add_circle,
                      color: ColorApp.primaryColor),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
