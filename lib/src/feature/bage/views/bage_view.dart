import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test2ptc/core/utils/color_manger.dart';
import 'package:iconsax/iconsax.dart';
import 'package:test2ptc/core/utils/routing.dart';
import 'package:test2ptc/core/widgets/button_widget.dart';
import 'package:test2ptc/src/feature/bage/views/widgets/detils_price.dart';
import 'package:test2ptc/src/feature/bage/views/widgets/offers.dart';
import 'widgets/bage_item.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_circle_left, color: Colors.black),
          onPressed: () {},
        ),
        title:
            const Text('Shopping Cart', style: TextStyle(color: Colors.black)),
        backgroundColor: ColorApp.yallowDarkColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              width: 520,
              padding: const EdgeInsets.all(16.0),
              color: ColorApp.yallowDarkColor,
              child: const Offers(),
            ),
            const SizedBox(
              height: 20,
            ),
            const BageItem(),
            // TextButton(
            //   onPressed: () {},
            //   child: const Text('+ More'),
            // ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
              child: ColumnDetlisPrice(),
            ),

            ButtonWidget(
                onPressed: () {
                  GoRouter.of(context)
                      .pushReplacement(AppRouter.kCheckoutScreen);
                },
                text: 'Proceed To Checkout'),
            const SizedBox(
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
