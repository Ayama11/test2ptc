import 'package:flutter/material.dart';
import 'package:test2ptc/src/feature/bage/views/widgets/cart_bage.dart';

import '../../../../../core/utils/color_manger.dart';
import '../../data/models/bage_model.dart';

class BageItem extends StatelessWidget {
  const BageItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            CartItemWidget(
                item: CartItem(name: 'Bananas', price: '\$7.90', quantity: 2)),
            const Divider(
              color: ColorApp.dividerColor,
            ),
            CartItemWidget(
                item:
                    CartItem(name: 'Package 01', price: '\$3.90', quantity: 4)),
            const Divider(
              color: ColorApp.dividerColor,
            ),
            CartItemWidget(
                item:
                    CartItem(name: 'Package 02', price: '\$4.90', quantity: 1)),
            const Divider(
              color: ColorApp.dividerColor,
            ),
            CartItemWidget(
                item:
                    CartItem(name: 'Package 03', price: '\$5.90', quantity: 1)),
            const Divider(
              color: ColorApp.dividerColor,
            ),
          ],
        ),
      ),
    );
  }
}
