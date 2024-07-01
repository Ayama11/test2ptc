import 'package:flutter/material.dart';

import '../../../home/views/widgets/cart_detils.dart';
import '../../../home/views/widgets/detils_category_appbar.dart';
import '../../../home/views/widgets/grid_view.dart';
import '../../../home/views/widgets/home_body.dart';
import '../../../home/views/widgets/silever_app.dart';

class CategoryBody extends StatefulWidget {
  const CategoryBody({super.key});

  @override
  _CategoryBodyState createState() => _CategoryBodyState();
}

class _CategoryBodyState extends State<CategoryBody> {
  bool isGridView = true;

  void toggleView() {
    setState(() {
      isGridView = !isGridView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SilverAppBarCustom(
          background: DetilsCategoryAppBar(
            onToggleView: toggleView,
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: isGridView
                    ? GridViewhome(
                        itemCount: 8,
                        itemBuilder: (BuildContext, int) {
                          return const CardItem();
                        },
                        crossAxisCount: 2)
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return const CardItem();
                        },
                      ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         initialIndex: 1,
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             bottom: ButtonsTabBar(
//                 elevation: 0,
//                 backgroundColor: Colors.amber,
//                 unselectedBackgroundColor: Colors.black,
//                 unselectedLabelStyle: const TextStyle(
//                   color: Colors.blue,
//                 ),
//                 labelStyle: const TextStyle(color: Colors.cyan),
//                 tabs: const [
//                   Tab(
//                     text: "mate",
//                   ),
//                   Tab(
//                     text: "mate",
//                   ),
//                   Tab(
//                     text: "mate",
//                   )
//                 ]),
//           ),
//           body: const TabBarView(
//             children: [
//               Center(child: Text("dkfnk")),
//               Center(child: Text("dkfnk")),
//               Center(child: Text("dkfnk"))
//             ],
//           ),
//         ));
//   }
// }







//9

/*
import 'package:flutter/material.dart';

class CategoryBody extends StatefulWidget {
  const CategoryBody({super.key});

  @override
  State<CategoryBody> createState() => _CategoryBodyState();
}

class _CategoryBodyState extends State<CategoryBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SilverAppBarCustom(
          background: CategoryTabs(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                const Text(
                  "Meats & Fishes",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                ProductCard(
                  color: Colors.yellow.shade200,
                  title: "Big & Small Fishes",
                  subtitle: "Fresh from sea",
                  price: "\$36/KG",
                ),
                ProductCard(
                  color: Colors.red.shade200,
                  title: "Halal Meats",
                  subtitle: "Organics & Fresh",
                  price: "\$90/KG",
                ),
                // Add more ProductCard widgets here
              ],
            ),
          ),
        ),
      ],
    );
  }
}
//import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final String price;

  const ProductCard({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.image, size: 40),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/
///tap bar
/*
import 'package:flutter/material.dart';

import '../../../home/views/widgets/cart_detils.dart';
import '../../../home/views/widgets/grid_view.dart';
import '../../../home/views/widgets/home_body.dart';

class CategoryBody extends StatefulWidget {
  const CategoryBody({super.key});

  @override
  _CategoryBodyState createState() => _CategoryBodyState();
}

class _CategoryBodyState extends State<CategoryBody>
    with SingleTickerProviderStateMixin {
  bool isGridView = true;
  late TabController _tabController;

  void toggleView() {
    setState(() {
      isGridView = !isGridView;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SilverAppBarCustom(
          background:
              // DetilsCategoryAppBar(onToggleView: toggleView),
              CategoryTabs(
            onToggleView: toggleView,
            tabController: _tabController,
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Theme.of(context).primaryColor,
                  tabs: [
                    Tab(
                      // text: "Meats & Fishes",
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                    Tab(
                      //  text: "Vegetables",
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: const Text("Vegetables"),
                      ),
                    ),
                    Tab(
                      //  text: "Fruits",
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 250,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      isGridView
                          ? GridViewhome(
                              itemCount: 8,
                              itemBuilder: (BuildContext, int) {
                                return const CardItem();
                              },
                              crossAxisCount: 2,
                            )
                          : ListView.builder(
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return const CartCategory();
                              },
                            ),
                      isGridView
                          ? GridViewhome(
                              itemCount: 8,
                              itemBuilder: (BuildContext, int) {
                                return const CardItem();
                              },
                              crossAxisCount: 2,
                            )
                          : ListView.builder(
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return const CartCategory();
                              },
                            ),
                      isGridView
                          ? GridViewhome(
                              itemCount: 8,
                              itemBuilder: (BuildContext, int) {
                                return const CardItem();
                              },
                              crossAxisCount: 2,
                            )
                          : ListView.builder(
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return const CartCategory();
                              },
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
*/