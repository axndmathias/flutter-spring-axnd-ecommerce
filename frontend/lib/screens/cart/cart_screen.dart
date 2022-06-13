import 'package:flutter/material.dart';

import '../../widgets/responsive_appbar.dart';
import '../../widgets/responsive_navbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          child: ResponsiveAppBar(title: "Cart"),
          preferredSize: Size(double.infinity, 52),
        ),
        body: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
        bottomNavigationBar: const ResponsiveNavAppBar());
  }
}
