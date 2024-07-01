import 'package:flutter/material.dart';
import 'package:test2ptc/core/utils/color_manger.dart';
import 'package:test2ptc/core/utils/routing.dart';

import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const Test2Ptc());

class Test2Ptc extends StatelessWidget {
  const Test2Ptc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        primaryColor: ColorApp.primaryColor,
        textTheme: GoogleFonts.manropeTextTheme(),
      ),
    );
  }
}

///Screens for each tab

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Favorites Screen'));
  }
}

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('More Screen'));
  }
}
