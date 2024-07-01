import 'package:go_router/go_router.dart';
import 'package:test2ptc/src/feature/bage/views/bage_view.dart';
import 'package:test2ptc/src/feature/bage/views/checkout_screen.dart';
import 'package:test2ptc/src/feature/home/views/main_screen.dart';
import 'package:test2ptc/src/feature/product/views/producat_screen.dart';

import '../../src/feature/on_bording/views/on_bording_view.dart';

abstract class AppRouter {
  static const kOnBordingView = "/";
  static const kMainScreen = "/MainScreen";
  static const kProductScreen = "/ProductScreen";
  static const kOfferScreen = "/OfferScreen";
  static const kCheckoutScreen = "/CheckoutScreen";
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (ctx, state) => const OnBordingView(),
    ),
    GoRoute(
      path: kMainScreen,
      builder: (ctx, state) => const MainScreen(),
    ),
    GoRoute(
      path: kProductScreen,
      builder: (ctx, state) => const ProductScreen(),
    ),
    GoRoute(
      path: kOfferScreen,
      builder: (ctx, state) => const OfferScreen(),
    ),
    GoRoute(
      path: kCheckoutScreen,
      builder: (ctx, state) => const CheckoutScreen(),
    ),
  ]);
}
