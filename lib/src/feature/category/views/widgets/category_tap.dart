// import 'package:flutter/material.dart';

// class CategoryTabs extends StatelessWidget {
//   const CategoryTabs({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 80.0),
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: [
//             _buildCategoryTab(context, "Meats & Fishes", true),
//             _buildCategoryTab(context, "Vegetables", false),
//             _buildCategoryTab(context, "Fruits", false),
//             // Add more categories here
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCategoryTab(
//       BuildContext context, String title, bool isSelected) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Chip(
//         label: Text(title),
//         backgroundColor:
//             isSelected ? Theme.of(context).primaryColor : Colors.grey.shade300,
//         labelStyle: TextStyle(
//           color: isSelected ? Colors.white : Colors.black,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manger.dart';

class CategoryTabs extends StatelessWidget {
  final VoidCallback onToggleView;
  final TabController tabController;
  const CategoryTabs(
      {super.key, required this.onToggleView, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Column(
        children: [
          Row(
            children: [
              // Expanded(
              //   child: SingleChildScrollView(
              //     scrollDirection: Axis.horizontal,
              //     child: Row(
              //       children: [
              //         _buildCategoryTab(context, "Meats & Fishes", 0),
              //         _buildCategoryTab(context, "Vegetables", 1),
              //         _buildCategoryTab(context, "Fruits", 2),
              //         // Add more categories here
              //       ],
              //     ),
              //   ),
              // ),
              Expanded(
                child: TabBar(
                  controller: tabController,
                  indicatorColor: Colors.transparent,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                  tabs: [
                    _buildCategoryTab(context, "Meats & Fishes", 0),
                    _buildCategoryTab(context, "Vegetables", 1),
                    _buildCategoryTab(context, "Fruits", 2),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.grid_view, color: Colors.white),
                onPressed: onToggleView,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget _buildCategoryTab(
  //     BuildContext context, String title, bool isSelected) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
  //     child: Chip(
  //       label: Text(title),
  //       backgroundColor:
  //           isSelected ? Theme.of(context).primaryColor : Colors.grey.shade300,
  //       labelStyle: TextStyle(
  //         color: isSelected ? Colors.white : Colors.black,
  //       ),
  //     ),
  //   );
  // }

  Widget _buildCategoryTab(BuildContext context, String title, int index) {
    final bool isSelected = tabController.index == index;
    return GestureDetector(
      onTap: () => tabController.animateTo(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: isSelected ? ColorApp.yallowLightColor : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.black,
          ),
        ),
      ),
    );
  }
}
