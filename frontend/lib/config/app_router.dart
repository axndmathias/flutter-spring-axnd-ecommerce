import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRouter {
  static Route onGenarateRoute(RouteSettings settings) {
    // ignore: avoid_print
    print(':::::: This is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      // ignore: no_duplicate_case_values
      case HomeScreen.routeName:
        return HomeScreen.route();

      case CartScreen.routeName:
        return CartScreen.route();

      case CatalogScreen.routeName:
        return CatalogScreen.route();

      case ProductScreen.routeName:
        return ProductScreen.route();

      case WishlistScreen.routeName:
        return WishlistScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error no route defined')),
      ),
    );
  }
}
