import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manger.dart';
import 'titel_row.dart';

class SilverAppBarCustom extends StatelessWidget {
  const SilverAppBarCustom({
    super.key,
    required this.background,
  });
  final Widget background;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300,
      backgroundColor: ColorApp.primaryColor,
      floating: false,
      pinned: true,
      title: const TitleRow(),
      flexibleSpace: FlexibleSpaceBar(
        background: background,
        // DetilsHomeAppBar(),
      ),
    );
  }
}
