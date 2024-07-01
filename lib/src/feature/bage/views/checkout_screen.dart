import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/utils/color_manger.dart';
import 'widgets/detiles_checkout.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:
              const Icon(Iconsax.arrow_circle_left, color: ColorApp.blackColor),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        title: const Text('Shopping Cart',
            style: TextStyle(color: ColorApp.blackColor)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: DetilesCheckout(),
      ),
    );
  }
}
