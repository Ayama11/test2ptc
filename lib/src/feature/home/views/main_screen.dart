import 'package:flutter/material.dart';

import '../../../../core/utils/color_manger.dart';
import '../../../../main.dart';
import '../../category/views/category_view.dart';
import 'widgets/home_body.dart';
import 'package:iconsax/iconsax.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'widgets/nav_item.dart';

//new

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeBody(),
    const CategoryScreen(),
    const FavoritesScreen(),
    const MoreScreen(),
  ];

  final List<Map<String, dynamic>> _navigationItems = [
    {
      'icon': Iconsax.home,
      'outlineIcon': Iconsax.home5,
      'label': 'Home',
    },
    {
      'icon': Iconsax.category,
      'outlineIcon': Iconsax.category_25,
      'label': 'Category',
    },
    {
      'icon': Iconsax.heart,
      'outlineIcon': Iconsax.heart5,
      'label': 'Favorites',
    },
    {
      'icon': Iconsax.more,
      'outlineIcon': Iconsax.more_24,
      'label': 'More',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        items: _navigationItems.map((item) {
          final int index = _navigationItems.indexOf(item);
          final bool isActive = _currentIndex == index;
          return NavigationItem(
            icon: isActive ? item['outlineIcon'] : item['icon'],
            label: isActive ? null : item['label'],
            isActive: isActive,
          );
        }).toList(),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.transparent,
        color: Colors.white,
        buttonBackgroundColor: ColorApp.blackColor,
        animationDuration: const Duration(milliseconds: 600),
      ),
    );
  }
}
