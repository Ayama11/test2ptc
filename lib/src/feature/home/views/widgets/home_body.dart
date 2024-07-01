import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2ptc/core/utils/color_manger.dart';
import 'package:test2ptc/core/utils/styles.dart';
import 'package:test2ptc/core/widgets/search_text.dart';
import 'package:test2ptc/src/feature/home/views/widgets/cart_detils.dart';
import 'package:test2ptc/src/feature/home/views/widgets/delivery_info.dart';
import 'package:test2ptc/src/feature/home/views/widgets/detils_home_appbar.dart';
import 'package:test2ptc/src/feature/home/views/widgets/grid_view.dart';
import 'package:test2ptc/src/feature/home/views/widgets/list_offers.dart';
import 'package:test2ptc/src/feature/home/views/widgets/silever_app.dart';
import 'package:test2ptc/src/feature/home/views/widgets/titel_row.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SilverAppBarCustom(
          background: DetilsHomeAppBar(),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              HorizontalCardList(),
              // const Expanded(child: Center(child: Text('Home Screen Content'))),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Recommended",
                  style: Styles.textStyle30,
                ),
              ),
              const ListViewItem(
                scrollDirection: Axis.horizontal,
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Deals on Fruits & Tea",
                  style: Styles.textStyle20black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridViewhome(
                    itemCount: 8,
                    itemBuilder: (BuildContext, int) {
                      return const CardItem();
                    },
                    crossAxisCount: 2),
              )
            ],
          ),
        ),
      ],
    );
  }
}
