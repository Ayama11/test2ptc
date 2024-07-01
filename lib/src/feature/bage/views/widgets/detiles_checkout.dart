import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manger.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/button_widget.dart';

class DetilesCheckout extends StatelessWidget {
  const DetilesCheckout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Delivery Address",
          textAlign: TextAlign.start,
          style: Styles.textStyle14,
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text('Home'),
          subtitle: const Text('36 green way, Sunamganj'),
          trailing: TextButton(
            onPressed: () {},
            child: const Text('Edit'),
          ),
          selected: true,
          selectedTileColor: Colors.orange[50],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: ColorApp.yallowLightColor),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text('Office'),
          subtitle: const Text('Medical road, Halal lab, Sunamganj'),
          trailing: TextButton(
            onPressed: () {},
            child: const Text('Edit'),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        ListTile(
          title: const Text(
            'Add New Address',
            textAlign: TextAlign.center,
          ),
          leading: const Icon(Icons.add_circle, color: ColorApp.primaryColor),
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
        const Spacer(),
        ButtonWidget(
          onPressed: () {},
          text: 'Proceed To Checkout',
        ),
      ],
    );
  }
}
