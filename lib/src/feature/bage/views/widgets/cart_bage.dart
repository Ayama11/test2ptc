import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manger.dart';
import '../../data/models/bage_model.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem item;

  const CartItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.grey[300],
            child: const Icon(Icons.image),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(item.price),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove_circle,
                    color: ColorApp.grayLightColor),
                onPressed: () {},
              ),
              Text(item.quantity.toString()),
              IconButton(
                icon: const Icon(Icons.add_circle,
                    color: ColorApp.grayLightColor),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
